require 'rails_helper'

RSpec.describe "themes/new", type: :view do
  before(:each) do
    assign(:theme, Theme.new(
      :spree_product => nil,
      :picture => "",
      :name => "MyString",
      :default => false
    ))
  end

  it "renders new theme form" do
    render

    assert_select "form[action=?][method=?]", themes_path, "post" do

      assert_select "input#theme_spree_product_id[name=?]", "theme[spree_product_id]"

      assert_select "input#theme_picture[name=?]", "theme[picture]"

      assert_select "input#theme_name[name=?]", "theme[name]"

      assert_select "input#theme_default[name=?]", "theme[default]"
    end
  end
end
