require 'rails_helper'

RSpec.describe "spaces/index", type: :view do
  before(:each) do
    assign(:spaces, [
      Space.create!(
        :name => "Name",
        :description => "MyText",
        :street_number => "Street Number",
        :street_name => "Street Name",
        :suburb => "Suburb",
        :state => "State",
        :country => "Country",
        :postal_code => "Postal Code",
        :images => "Images",
        :user => nil
      ),
      Space.create!(
        :name => "Name",
        :description => "MyText",
        :street_number => "Street Number",
        :street_name => "Street Name",
        :suburb => "Suburb",
        :state => "State",
        :country => "Country",
        :postal_code => "Postal Code",
        :images => "Images",
        :user => nil
      )
    ])
  end

  xit "renders a list of spaces" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Street Number".to_s, :count => 2
    assert_select "tr>td", :text => "Street Name".to_s, :count => 2
    assert_select "tr>td", :text => "Suburb".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Images".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
