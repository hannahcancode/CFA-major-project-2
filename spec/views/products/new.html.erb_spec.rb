require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :name => "MyString",
      :description => "MyString",
      :images => "MyString",
      :purchased => false,
      :user => nil,
      :space => nil
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_description[name=?]", "product[description]"

      assert_select "input#product_images[name=?]", "product[images]"

      assert_select "input#product_purchased[name=?]", "product[purchased]"
    end
  end
end
