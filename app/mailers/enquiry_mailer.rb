class EnquiryMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.recieved.subject
  #

  default from: 'contact@coderfactoryacademy.com'

  def recieved(enquiry)
    mail from: @email
    @email = email
    @enquiry = enquiry

    mail to: ENV['MY_EMAIL']
  end


  def response(enquiry)
    @enquiry = enquiry
    mail(to: ENV['MY_EMAIL'], subject: 'New message from website', from: enquiry.email) do |format|
        format.html { render 'response' }
        format.text { render 'response' }
    end
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.enquiry_mailer.response.subject

end
