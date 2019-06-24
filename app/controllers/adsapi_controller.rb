# frozen_string_literal: true

class AdsapiController < ApplicationController

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

      report.save

      array.push(
        img_url: ad.picture,
        body: ad.body,
        ad_id: ad.id
      )
    end

    # Report.import reports, on_duplicate_key_update: [:imp]
    render json: array # read out the json

  end


  def click
    # ad = Ad.find_by(target_ids)
    if report = Report.find_by(ad_id: params[:ad_id], adspot_id: params[:adspot_id])
      if report.click.nil?
        report.click = 1
        report.totalcost = Ad.find(params[:ad_id]).price
      else
        report.click += 1
        report.totalcost += Ad.find(params[:ad_id]).price
      end
        report.save

    else
      render status: 400, json: { status: 400, message: 'Not existed!' }
    end

  end


end
