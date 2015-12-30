require 'rails_helper'

RSpec.describe "layouts/show", type: :view do
  before(:each) do
    @layout = assign(:layout, Layout.create!(
      :personalization => nil,
      :name => "Name",
      :order => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
