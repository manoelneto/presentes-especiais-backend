require 'rails_helper'

RSpec.describe "personalizations/edit", type: :view do
  before(:each) do
    @personalization = assign(:personalization, Personalization.create!(
      :theme => nil,
      :picture => "",
      :name => "MyString",
      :order => 1
    ))
  end

  it "renders the edit personalization form" do
    render

    assert_select "form[action=?][method=?]", personalization_path(@personalization), "post" do

      assert_select "input#personalization_theme_id[name=?]", "personalization[theme_id]"

      assert_select "input#personalization_picture[name=?]", "personalization[picture]"

      assert_select "input#personalization_name[name=?]", "personalization[name]"

      assert_select "input#personalization_order[name=?]", "personalization[order]"
    end
  end
end
