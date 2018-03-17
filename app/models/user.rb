class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :send_welcome_email

  attr_accessor :skip_password_validation

  protected

  def password_required?
    return false if skip_password_validation
    super
  end

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end

user.skip_password_validation = true
user.save
