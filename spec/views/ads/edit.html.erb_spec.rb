require 'rails_helper'

RSpec.describe "ads/edit", type: :view do
  before(:each) do
    @ad = assign(:ad, Ad.create!(
      :body => "MyString",
      :img => "MyString",
      :price => "5",
      :url => "MyString"
    ))
  end

  it "renders the edit ad form" do
    render

    assert_select "form[action=?][method=?]", ad_path(@ad), "post" do

      assert_select "input[name=?]", "ad[body]"

      assert_select "input[name=?]", "ad[img]"

      assert_select "input[name=5]", "ad[price]"

      assert_select "input[name=?]", "ad[url]"
    end
  end
end
