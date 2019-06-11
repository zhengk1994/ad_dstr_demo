require 'rails_helper'

RSpec.describe "ads/index", type: :view do
  before(:each) do
    assign(:ads, [
      Ad.create!(
        :body => "Body",
        :img => "Img",
        :price => "Price",
        :url => "Url"
      ),
      Ad.create!(
        :body => "Body",
        :img => "Img",
        :price => "Price",
        :url => "Url"
      )
    ])
  end

  it "renders a list of ads" do
    render
    assert_select "tr>td", :text => "Body".to_s, :count => 2
    assert_select "tr>td", :text => "Img".to_s, :count => 2 
    assert_select "tr>td", :text => "Price".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
