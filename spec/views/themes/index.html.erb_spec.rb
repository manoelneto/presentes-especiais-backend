require 'rails_helper'

RSpec.describe "themes/index", type: :view do
  before(:each) do
    assign(:themes, [
      Theme.create!(
        :spree_product => nil,
        :picture => "",
        :name => "Name",
        :default => false
      ),
      Theme.create!(
        :spree_product => nil,
        :picture => "",
        :name => "Name",
        :default => false
      )
    ])
  end

  it "renders a list of themes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
