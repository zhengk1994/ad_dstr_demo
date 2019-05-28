class AdsController < ApplicationController
  before_action :set_ad, only: [:show, :edit, :update, :destroy]

  # GET /ads
  # GET /ads.json
  def index
    @ads = Ad.all
  end

  # GET /ads/1
  # GET /ads/1.json

  def show
    @ad = Ad.find(params[:id])
  end

  # GET /ads/new
  def new
    @ad = Ad.new
  end

  # GET /ads/1/edit
  def edit
    @ad = Ad.find(params[:id])
  end

  # POST /ads
  # POST /ads.json
  def create
    @ad = Ad.new(ad_params)

     if @ad.save
       redirect_to @ad
     else
       render 'new'
     end
  end

  # PATCH/PUT /ads/1
  # PATCH/PUT /ads/1.json
  def update
    @ad = Ad.find(params[:id])
      if @ad.update_attributes(ad_params)
        redirect_to @ad
      else
        render 'edit'
      end

  end

  # DELETE /ads/1
  # DELETE /ads/1.json
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

    # Never trust parameters from the scary internet, only allow the white list through.
    def ad_params
      params.require(:ad).permit(:body, :img, :price, :url, :picture)
    end
end
