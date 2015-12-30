require 'rails_helper'

RSpec.describe "layouts/edit", type: :view do
  before(:each) do
    @layout = assign(:layout, Layout.create!(
      :personalization => nil,
      :name => "MyString",
      :order => 1
    ))
  end

  it "renders the edit layout form" do
    render

    assert_select "form[action=?][method=?]", layout_path(@layout), "post" do

      assert_select "input#layout_personalization_id[name=?]", "layout[personalization_id]"

      assert_select "input#layout_name[name=?]", "layout[name]"

      assert_select "input#layout_order[name=?]", "layout[order]"
    end
  end
end
