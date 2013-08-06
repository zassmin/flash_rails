class User < ActiveRecord::Base  
  attr_accessible :email, :password, :password_confirmation

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }


  before_save { email.downcase! }
  
  has_many :rounds

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
end
