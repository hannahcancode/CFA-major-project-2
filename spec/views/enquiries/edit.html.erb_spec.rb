require 'rails_helper'

RSpec.describe "enquiries/edit", type: :view do
  before(:each) do
    @enquiry = assign(:enquiry, Enquiry.create!(
      :name => "MyString",
      :email => "MyString",
      :message => "MyText"
    ))
  end

  it "renders the edit enquiry form" do
    render

    assert_select "form[action=?][method=?]", enquiry_path(@enquiry), "post" do

      assert_select "input#enquiry_name[name=?]", "enquiry[name]"

      assert_select "input#enquiry_email[name=?]", "enquiry[email]"

      assert_select "textarea#enquiry_message[name=?]", "enquiry[message]"
    end
  end
end
