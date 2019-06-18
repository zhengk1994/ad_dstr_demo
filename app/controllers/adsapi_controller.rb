class AdsapiController < ApplicationController
  def click
    # ad = Ad.find_by(id: params[:ad_id])
    #
    # if ad
    #   if ad.click.nil?
    #     ad.click = 1
    #   else
    #     ad.click += 1
    #   end
    #   ad.save

      #ad.price = params[:price]
      #ad.save

    # else
    #   ad = Ad.new
    #   if ad.click.nil?
    #     ad.click = 1
    #   else
    #     ad.click += 1
    #   end
    #   ad.save
    if report = Report.find_by(ad_id: params[:ad_id], adspot_id: params[:adspot_id])
      report.click += 1
      report.totalcost += Ad.find(params[:ad_id]).price
      report.save

      p report.click
      p report.totalcost

    else
      render status: 500, json: {status: 500, message: 'Not existed!'}
    end

    #render status: 500, json: { status: 500, message: 'Not existed!' }

  end

  def view
    array = [] #initial the list
    target_ids = Ad.pluck(:id).sample(params[:count].to_i) #get ad_id randomly
    ads = Ad.find(target_ids)
    ads.each do |ad|
      # if ad.imp.nil?
      #   ad.imp = 1
      # else
      #   ad.imp += 1
      # end
      # ad.save
      report = Report.find_by(ad_id: ad.id, adspot_id: params[:adspot_id])
      unless report
        report = Report.new(ad_id: ad.id, adspot_id: params[:adspot_id])
      end


      if report.imp.nil?
        report.imp = 1
      else
      report.imp += 1
      report.save
      p report.imp
      end
   # else
   #   render status: 500, json: { status: 500, message: 'Not existed!' }
   # end

      array.push(

         img_url: ad.picture,
         body: ad.body,
         ad_id: ad.id
      )
      end
     render json: array  #read out the json

     #render status: 500, json: { status: 500, message: 'Not existed!' }
  end

private
def count_p
end

end
