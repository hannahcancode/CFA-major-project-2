# Preview all emails at http://localhost:3000/rails/mailers/enquiry
class EnquiryPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/enquiry/recieved
  def recieved
    EnquiryMailer.recieved
  end

  # Preview this email at http://localhost:3000/rails/mailers/enquiry/response
  def response
    EnquiryMailer.response
  end

end
