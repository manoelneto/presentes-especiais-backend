require 'rails_helper'

RSpec.describe "area_editions/edit", type: :view do
  before(:each) do
    @area_edition = assign(:area_edition, AreaEdition.create!(
      :layout => nil,
      :name => "MyString",
      :required => false,
      :order => 1,
      :area_type => "MyString"
    ))
  end

  it "renders the edit area_edition form" do
    render

    assert_select "form[action=?][method=?]", area_edition_path(@area_edition), "post" do

      assert_select "input#area_edition_layout_id[name=?]", "area_edition[layout_id]"

      assert_select "input#area_edition_name[name=?]", "area_edition[name]"

      assert_select "input#area_edition_required[name=?]", "area_edition[required]"

      assert_select "input#area_edition_order[name=?]", "area_edition[order]"

      assert_select "input#area_edition_area_type[name=?]", "area_edition[area_type]"
    end
  end
end
