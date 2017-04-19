require 'rails_helper'

RSpec.describe "spaces/show", type: :view do
  before(:each) do
    @space = assign(:space, Space.create!(
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
    ))
  end

  xit "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Street Number/)
    expect(rendered).to match(/Street Name/)
    expect(rendered).to match(/Suburb/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Postal Code/)
    expect(rendered).to match(/Images/)
    expect(rendered).to match(//)
  end
end
