require 'rails_helper'

RSpec.describe "enquiries/new", type: :view do
  before(:each) do
    assign(:enquiry, Enquiry.new(
      :name => "MyString",
      :email => "MyString",
      :message => "MyText"
    ))
  end

  it "renders new enquiry form" do
    render

    assert_select "form[action=?][method=?]", enquiries_path, "post" do

      assert_select "input#enquiry_name[name=?]", "enquiry[name]"

      assert_select "input#enquiry_email[name=?]", "enquiry[email]"

      assert_select "textarea#enquiry_message[name=?]", "enquiry[message]"
    end
  end
end
