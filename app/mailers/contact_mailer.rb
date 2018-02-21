class ContactMailer < ActionMailer::Base
  default to: "Sew Incredible <baranska.n@gmail.com>"

  def contact_email(contact)
    @name = contact.name
    @email = contact.email
    @message = contact.message

    mail(reply_to: email, subject: "Contact Form Message from Sew Incredible")
  end
end
