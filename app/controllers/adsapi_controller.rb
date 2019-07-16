class AdsapiController < ApplicationController
  def click
    array = []
    ad = Ad.find(params[:ad_id])
    if report = Report.find_by(ad_id: params[:ad_id], adspot_id: params[:adspot_id])
      report = Report.find_by(ad_id: ad.id, adspot_id: params[:adspot_id])
      report ||= Report.new(ad_id: ad.id, adspot_id: params[:adspot_id])
      array.push(
        img_url: ad.picture.url,
        body: ad.body,
        ad_id: ad.id
      )

      render json: array # read out the json

    else
      render status: 500, json: { status: 500, message: 'Not existed!' }
    end
  end

  def view
    array = [] # initial the list
    target_ids = Ad.pluck(:id).sample(params[:count].to_i) # get ad_id randomly
    ads = Ad.find(target_ids)
    ads.each do |ad|
      report = Report.find_by(ad_id: ad.id, adspot_id: params[:adspot_id])
      report ||= Report.new(ad_id: ad.id, adspot_id: params[:adspot_id])
      array.push(
        img_url: ad.picture.url,
        body: ad.body,
        ad_id: ad.id
      )
    end
    render json: array # read out the json
  end
end
