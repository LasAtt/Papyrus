class Tag < ActiveRecord::Base
  has_many :images, through: :image_tags
end
