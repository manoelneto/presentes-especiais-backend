require 'rails_helper'

RSpec.describe "personalizations/new", type: :view do
  before(:each) do
    assign(:personalization, Personalization.new(
      :theme => nil,
      :picture => "",
      :name => "MyString",
      :order => 1
    ))
  end

  it "renders new personalization form" do
    render

    assert_select "form[action=?][method=?]", personalizations_path, "post" do

      assert_select "input#personalization_theme_id[name=?]", "personalization[theme_id]"

      assert_select "input#personalization_picture[name=?]", "personalization[picture]"

      assert_select "input#personalization_name[name=?]", "personalization[name]"

      assert_select "input#personalization_order[name=?]", "personalization[order]"
    end
  end
end
