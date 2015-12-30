require 'rails_helper'

RSpec.describe "layouts/new", type: :view do
  before(:each) do
    assign(:layout, Layout.new(
      :personalization => nil,
      :name => "MyString",
      :order => 1
    ))
  end

  it "renders new layout form" do
    render

    assert_select "form[action=?][method=?]", layouts_path, "post" do

      assert_select "input#layout_personalization_id[name=?]", "layout[personalization_id]"

      assert_select "input#layout_name[name=?]", "layout[name]"

      assert_select "input#layout_order[name=?]", "layout[order]"
    end
  end
end
