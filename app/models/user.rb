class User < ApplicationRecord
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: %i[github]

  def self.from_omniauth(auth)
    User.find_or_create_by!(provider: auth.provider, uid: auth.uid) do |user|
      # where(provider: auth.provider, uid: auth.uid).find_or_create_by!
      user.email = auth.info.email
      user.password = Devise.friendly_token[0, 20]
      user.name = auth.info.name
    end
  end
  has_many :sent_invites, class_name: "Invite", foreign_key: "from_user_id"
  has_many :received_invites, class_name: "Invite", foreign_key: "to_user_id"
  has_many :followers, class_name: "Follower", foreign_key: "followed_user_id"
  has_many :followeds, class_name: "Follower", foreign_key: "follower_id"
end
