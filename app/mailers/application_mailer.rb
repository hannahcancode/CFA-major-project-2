class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  def recieved(enquiry)
    @enquiry = enquiry

    mail to: ENV['MY_EMAIL']
  end

  def response(enquiry)

    @enquiry = enquiry

    mail to: "@enquiry.email"
  end
end
