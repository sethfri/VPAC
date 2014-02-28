class NominationMailer < ActionMailer::Base
  default from: ENV['MAILER_VPAC'], bcc: ENV['MAILER_VPAC']

  def nomination_email(nominee, nominator, email)
    @nominee = nominee
    @nominator = nominator
    @email = email

    mail(to: email, subject: 'VPAC Board Nomination')
  end
end
