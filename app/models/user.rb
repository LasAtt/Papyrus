class User < ActiveRecord::Base
    validates :username, uniqueness: true,
                       length: { minimum: 3,
                                 maximum: 15 }
  validates :password, length: { minimum: 4 }
  validates_format_of :password, :with => /\A(?=.*[A-Z])(?=.*\d).+\Z/
 
  has_secure_password

  has_many :images

  def to_s
    "#{username}"
  end
end
