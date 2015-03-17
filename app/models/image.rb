class Image < ActiveRecord::Base
  has_many :tags
  has_attached_file :picture, :styles => {
      :thumb => "100x100#",
      :small  => "300x150>",
      :medium => "600x600>" }

  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
