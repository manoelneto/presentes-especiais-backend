require 'rails_helper'

RSpec.describe "personalizations/index", type: :view do
  before(:each) do
    assign(:personalizations, [
      Personalization.create!(
        :theme => nil,
        :picture => "",
        :name => "Name",
        :order => 1
      ),
      Personalization.create!(
        :theme => nil,
        :picture => "",
        :name => "Name",
        :order => 1
      )
    ])
  end

  it "renders a list of personalizations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
