class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password

  # Name validation
  validates :name, presence: true,
            length: { minimum: 4, maximum: 50 }
  # Email validation
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates_uniqueness_of :email, case_sensitive: false
  # Password validation
  validates :password, presence: true, length: { minimum: 6, maximum: 50 }
  # Password confirmation validation
  validates :password_confirmation, presence: true

  before_save { |user|
    user.email.downcase!
  }

end