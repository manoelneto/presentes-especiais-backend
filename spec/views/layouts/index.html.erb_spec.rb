require 'rails_helper'

RSpec.describe "layouts/index", type: :view do
  before(:each) do
    assign(:layouts, [
      Layout.create!(
        :personalization => nil,
        :name => "Name",
        :order => 1
      ),
      Layout.create!(
        :personalization => nil,
        :name => "Name",
        :order => 1
      )
    ])
  end

  it "renders a list of layouts" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
