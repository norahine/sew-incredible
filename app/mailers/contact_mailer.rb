class ContactMailer < ActionMailer::Base
  default to: "baranska.n@gmail.com"

  def contact_email(name, email, message)
    @name = name
    @email = email
    @message = message

    mail(from: "baranska.n@gmail.com", reply_to: email, subject: "Contact Form Message from Sew Incredible")
  end
end
