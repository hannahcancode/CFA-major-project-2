require 'rails_helper'

RSpec.describe "enquiries/index", type: :view do
  before(:each) do
    assign(:enquiries, [
      Enquiry.create!(
        :name => "Name",
        :email => "Email",
        :message => "MyText"
      ),
      Enquiry.create!(
        :name => "Name",
        :email => "Email",
        :message => "MyText"
      )
    ])
  end

  it "renders a list of enquiries" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
