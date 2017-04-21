require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "MyString",
      :description => "MyString",
      :images => "MyString",
      :purchased => false,
      :user => nil,
      :space => nil
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_description[name=?]", "product[description]"

      assert_select "input#product_images[name=?]", "product[images]"

      assert_select "input#product_purchased[name=?]", "product[purchased]"

      assert_select "input#product_user_id[name=?]", "product[user_id]"

      assert_select "input#product_space_id[name=?]", "product[space_id]"
    end
  end
end