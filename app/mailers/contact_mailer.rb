class ContactMailer < ActionMailer::Base
  default to: 'sethfri@gmail.com'

  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body

    mail(from: email, subject: 'VPAC Contact Request')
  end
end
