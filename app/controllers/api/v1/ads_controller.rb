class Api::V1::AdsController < Api::V1::BaseController
  def show
    @ad = Ad.find(params[:id])
  end
  
end
