class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'

  # def message
  #   mail(
  #     :subject => 'Hello from Postmark',
  #     :to  => 'matthieulombard@1toit2ages.be',
  #     :from => 'matthieulombard@1toit2ages.be',
  #     :html_body => '<strong>Hello</strong> dear Postmark user.',
  #     :track_opens => 'true')
  # end
end
