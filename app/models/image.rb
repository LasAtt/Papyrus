class Image < ActiveRecord::Base
  has_many :tags, through: :image_tag
  belongs_to :user
  has_attached_file :picture, :styles => {
      :thumb => "60x60#",
      :small  => "300x150>",
      :medium => "600x600>" }

  validates_attachment :picture, :presence => true,
    :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }

end
