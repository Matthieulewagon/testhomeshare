class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
    @user = user  # Instance variable => available in view
    @users = [@user.email]
    @claire = ["matthieulombard@1toit2ages.be"]
    mail(to: @users, subject: 'Homesharecongress2019, Confirmation: You are registered').deliver!
    mail(to: @claire, :template_name => "welcome2.html.erb", subject: 'Homesharecongress2019, Confirmation: You are registered').deliver!
    # This will render a view in `app/views/user_mailer`!
  end
  # def welcome2(user)
  #     # Instance variable => available in view
  #   @claire = ["matthieulombard@1toit2ages.be"]

  #   mail(to: @claire, subject: 'Homesharecongress2019, Confirmation: You are registered')
  #   # This will render a view in `app/views/user_mailer`!
  # end
end
