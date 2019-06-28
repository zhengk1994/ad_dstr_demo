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

<<<<<<< HEAD
      #ad.price = params[:price]
      #ad.save
=======
  def view

    array = [] # initial the list
    target_ids = Ad.pluck(:id).sample(params[:count].to_i) # get ad_id randomly
    ads = Ad.find(target_ids)
    ads.each do |ad|
      report = Report.find_by(ad_id: ad.id, adspot_id: params[:adspot_id])
      report ||= Report.new(ad_id: ad.id, adspot_id: params[:adspot_id])

      if report.imp.nil?
        report.imp = 1
      else
        report.imp += 1
      end
>>>>>>> 9c79657a... delete useless files and redesign html

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
<<<<<<< HEAD
=======

>>>>>>> 9c79657a... delete useless files and redesign html

      p report.click
      p report.totalcost

    else
      render status: 400, json: {status: 400, message: 'Not existed!'}
    end

<<<<<<< HEAD
    #render status: 500, json: { status: 500, message: 'Not existed!' }
=======
    render json: array # read out the json
>>>>>>> 9c79657a... delete useless files and redesign html

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

<<<<<<< HEAD

      if report.imp.nil?
        report.imp = 1
=======
  def click

    if report = Report.find_by(ad_id: params[:ad_id], adspot_id: params[:adspot_id])
      if report.click.nil?
        report.click = 1
        report.totalcost = Ad.find(params[:ad_id]).price
        report.ctr = 1 / Report.find_by(ad_id: params[:ad_id], adspot_id: params[:adspot_id]).imp.to_f
        report.cpm = 1000 * Report.find_by(ad_id: params[:ad_id], adspot_id: params[:adspot_id]).totalcost.to_f / Report.find_by(ad_id: params[:ad_id], adspot_id: params[:adspot_id]).click.to_f
>>>>>>> 9c79657a... delete useless files and redesign html
      else
      report.imp += 1
      report.save
      p report.imp
      end
   # else
   #   render status: 500, json: { status: 500, message: 'Not existed!' }
   # end

      array.push(

<<<<<<< HEAD
         img_url: ad.picture,
         body: ad.body,
         ad_id: ad.id
      )
      end
     render json: array  #read out the json

     #render status: 500, json: { status: 500, message: 'Not existed!' }
=======
>>>>>>> 9c79657a... delete useless files and redesign html
  end

private
def count_p
end

end
