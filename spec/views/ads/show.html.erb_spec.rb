require 'rails_helper'

RSpec.describe "ads/show", type: :view do
  before(:each) do
    @ad = assign(:ad, Ad.create!(
      :body => "Body",
      :picture => "Img",
      :price => "30",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Body/)
    expect(rendered).to match(/Picture/)
    expect(rendered).to match(/Price/)
    expect(rendered).to match(/Url/)
  end
end
