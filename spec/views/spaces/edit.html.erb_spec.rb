require 'rails_helper'

RSpec.describe "spaces/edit", type: :view do
  before(:each) do
    @space = assign(:space, Space.create!(
      :name => "MyString",
      :description => "MyText",
      :street_number => "MyString",
      :street_name => "MyString",
      :suburb => "MyString",
      :state => "MyString",
      :country => "MyString",
      :postal_code => "MyString",
      :images => "MyString",
      :user => nil
    ))
  end

  xit "renders the edit space form" do
    render

    assert_select "form[action=?][method=?]", space_path(@space), "post" do

      assert_select "input#space_name[name=?]", "space[name]"

      assert_select "textarea#space_description[name=?]", "space[description]"

      assert_select "input#space_street_number[name=?]", "space[street_number]"

      assert_select "input#space_street_name[name=?]", "space[street_name]"

      assert_select "input#space_suburb[name=?]", "space[suburb]"

      assert_select "input#space_state[name=?]", "space[state]"

      assert_select "input#space_country[name=?]", "space[country]"

      assert_select "input#space_postal_code[name=?]", "space[postal_code]"

      assert_select "input#space_images[name=?]", "space[images]"

      assert_select "input#space_user_id[name=?]", "space[user_id]"
    end
  end
end
