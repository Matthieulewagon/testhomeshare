class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user  # Instance variable => available in view

    mail(to: @user.email, subject: 'Confirmation: You are registered')
    # This will render a view in `app/views/user_mailer`!
  end

  def message
    mail(
      :subject => 'Hello from Postmark',
      :to  => 'matthieulombard@1toit2ages.be',
      :from => 'matthieulombard@1toit2ages.be',
      :html_body => '<strong>Hello</strong> dear Postmark user.',
      :track_opens => 'true')
  end
end

