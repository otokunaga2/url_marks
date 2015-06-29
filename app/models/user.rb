class User < ActiveRecord::Base
  has_many :bookmarks
<<<<<<< HEAD
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  has_secure_password
  validates :password, length: { minimum: 6 }
=======
  devise :database_authenticatable, :omniauthable, :recoverable,
            :registerable, :rememberable, :trackable, :validatable

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
    user = User.create(
      name:     auth.extra.raw_info.name,
      provider: auth.provider,
      uid:      auth.uid,
      email:    auth.info.email,
      password: Devise.friendly_token[0,20]
      )
    end
    user
  end

  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
    unless user
    user = User.create(
      name:     auth.info.nickname,
      provider: auth.provider,
      uid:      auth.uid,
      email:    User.create_unique_email,
      password: Devise.friendly_token[0,20]
    )
    end
    user
  end
  # 通常サインアップ時のuid用、Twitter OAuth認証時のemail用にuuidな文字列を生成
  def self.create_unique_string
    SecureRandom.uuid
  end

  # twitterではemailを取得できないので、適当に一意のemailを生成
  def self.create_unique_email
    User.create_unique_string + "@example.com"
  end
>>>>>>> origin/master
end
