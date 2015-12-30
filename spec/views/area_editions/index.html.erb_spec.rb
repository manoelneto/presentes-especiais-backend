require 'rails_helper'

RSpec.describe "area_editions/index", type: :view do
  before(:each) do
    assign(:area_editions, [
      AreaEdition.create!(
        :layout => nil,
        :name => "Name",
        :required => false,
        :order => 1,
        :area_type => "Area Type"
      ),
      AreaEdition.create!(
        :layout => nil,
        :name => "Name",
        :required => false,
        :order => 1,
        :area_type => "Area Type"
      )
    ])
  end

  it "renders a list of area_editions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Area Type".to_s, :count => 2
  end
end
