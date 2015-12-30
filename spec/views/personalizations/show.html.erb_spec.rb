require 'rails_helper'

RSpec.describe "personalizations/show", type: :view do
  before(:each) do
    @personalization = assign(:personalization, Personalization.create!(
      :theme => nil,
      :picture => "",
      :name => "Name",
      :order => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
