require "rails_helper"

RSpec.describe EnquiryMailer, type: :mailer do
  describe "recieved" do
    let(:mail) { EnquiryMailer.recieved }

    xit "renders the headers" do
      expect(mail.subject).to eq("Recieved")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    xit "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

  describe "response" do
    let(:mail) { EnquiryMailer.response }

    xit "renders the headers" do
      expect(mail.subject).to eq("Response")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    xit "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
