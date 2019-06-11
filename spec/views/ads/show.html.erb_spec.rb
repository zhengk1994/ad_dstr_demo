require 'rails_helper'

RSpec.describe "ads/show", type: :view do
  before(:each) do
    @ad = assign(:ad, Ad.create!(
      :body => "Body",
      :img => "Img",
      :price => "5",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Body/)
    expect(rendered).to match(/Img/)
    expect(rendered).to match(/Price/)
    expect(rendered).to match(/Url/)
  end
end
