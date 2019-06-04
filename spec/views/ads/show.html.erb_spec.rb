require 'rails_helper'

RSpec.describe "ads/show", type: :view do
  before(:each) do
    @ad = assign(:ad, Ad.create!(
      :body => "Body",
      # :img => "Img", img tag is deleted from this page.
      :price => "Price",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Body/)
    #expect(rendered).to match(/Img/), img tag is deleted from this page.
    expect(rendered).to match(/Price/)
    expect(rendered).to match(/Url/)
  end
end
