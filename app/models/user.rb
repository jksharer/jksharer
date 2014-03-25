class User < ActiveRecord::Base
  before_save { self.email = email.downcase }
  
  has_secure_password
  
  validates :name, presence: true, uniqueness: true, length: { maximum: 50 }
  
  #email格式验证正则表达式
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
end
