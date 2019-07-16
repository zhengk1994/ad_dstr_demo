require 'rails_helper'

RSpec.describe "ads/new", type: :view do
  before(:each) do
    assign(:ad, Ad.new(
      :body => "MyString",
      :img => "MyString",
      :price => "30",
      :url => "MyString"
    ))
  end

  it "renders new ad form" do
    render

    assert_select "form[action=?][method=?]", ads_path, "post" do

      assert_select "input[name=?]", "ad[body]"

      assert_select "input[name=?]", "ad[url]"
    end
  end
end
