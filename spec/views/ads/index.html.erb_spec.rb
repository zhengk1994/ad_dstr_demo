require 'rails_helper'

RSpec.describe "ads/index", type: :view do
  before(:each) do
    assign(:ads, [
      Ad.create!(
        :body => "Body1",
        :price => "30",
        :url => "Url1"
      ),
      Ad.create!(
        :body => "Body2",
        :price => "20",
        :url => "Url2"
      )
    ])
  end

  it "renders a list of ads" do
    render
    assert_select "tr>td", :text => "Body1".to_s, :count => 1
    #assert_select "tr>td", :text => "Img".to_s, :count => 2
    assert_select "tr>td", :text => "30".to_s, :count => 1
    assert_select "tr>td", :text => "Url1".to_s, :count => 1
  end
end
