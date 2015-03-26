class User < ActiveRecord::Base
  validates :username, presence: true, length: { minimum: 3, maximum: 12}
  validates :password, length: 
  has_secure_password

  has_many :images
end
