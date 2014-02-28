class ContactMailer < ActionMailer::Base
  default to: ENV['MAILER_VPAC']

  def contact_email(name, email, body)
    @name = name
    @email = email
    @body = body

    mail(from: email, subject: 'VPAC Contact Request')
  end
end
