class Tag < ActiveRecord::Base
  has_many :image_tags
  has_many :images, through: :image_tags

  def to_s
    "#{name}"
  end
end