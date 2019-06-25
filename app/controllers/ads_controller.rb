class AdsController < ApplicationController
  before_action :set_ad, only: [:show, :edit, :update, :destroy, :showreport]

  def index
    @ads = Ad.all
  end


  def show
    @ad = Ad.find(params[:id])
  end

  def new
    @ad = Ad.new
  end

  def edit
    @ad = Ad.find(params[:id])
  end

  def create
    @ad = Ad.new(ad_params)

     if @ad.save
       redirect_to @ad
     else
       render 'new'
     end
  end

  def update
    @ad = Ad.find(params[:id])
      if @ad.update_attributes(ad_params)
        redirect_to @ad
      else
        render 'edit'
      end

  end

  def destroy
    Ad.find(params[:id]).destroy
    redirect_to ads_url
  end

  def mystore
    up_file = params[:localfile]
    myfile = PictureUploader.new
    myfile.store!(up_file)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad
      @ad = Ad.find(params[:id])
    end

    def ad_params
      params.require(:ad).permit(:body, :img, :price, :url, :picture)
    end

end
