require 'rails_helper'

RSpec.describe AdsapiController, type: :controller do

  describe "GET #click" do
    it "returns http success" do
      get :click
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #view" do
    it "returns http success" do
      get :view
      expect(response).to have_http_status(:success)
    end
  end

end
