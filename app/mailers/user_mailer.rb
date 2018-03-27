class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user  # Instance variable => available in view
    @users = [@user.email, "matthieulombard@1toit2ages.be"]

    mail(to: @users, subject: 'Homesharecongress2019, Confirmation: You are registered')
    # This will render a view in `app/views/user_mailer`!
  end
end

