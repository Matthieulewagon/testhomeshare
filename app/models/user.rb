class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
  after_create :send_welcome_email, :send_welcome_email2
  validates :email, uniqueness: true, presence: true




  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

  def send_welcome_email2
    UserMailer.patate(self).deliver_now
  end
end


