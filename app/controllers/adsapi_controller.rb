class AdsapiController < ApplicationController
  def click
    ad = Ad.find_by(id: params[:ad_id])

    if ad
      if ad.click.nil?
        ad.click = 1
      else
        ad.click += 1
      end
      ad.save

      #ad.price = params[:price]
      #ad.save

    else
      ad = Ad.new
      if ad.click.nil?
        ad.click = 1
      else
        ad.click += 1
      end
      ad.save

    #render status: 500, json: { status: 500, message: 'Not existed!' }
    end
  end

  def view
    array = [] #initial the list
    target_ids = Ad.pluck(:id).sample(params[:count].to_i) #get ad_id randomly
    ads = Ad.find(target_ids)
    ads.each do |ad|
      if ad.imp.nil?
        ad.imp = 1
      else
        ad.imp += 1
      end
      ad.save        #count the impression of the ad

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
