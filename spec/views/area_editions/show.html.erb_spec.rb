require 'rails_helper'

RSpec.describe "area_editions/show", type: :view do
  before(:each) do
    @area_edition = assign(:area_edition, AreaEdition.create!(
      :layout => nil,
      :name => "Name",
      :required => false,
      :order => 1,
      :area_type => "Area Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Area Type/)
  end
end
