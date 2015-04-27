class ImageTag < ActiveRecord::Base
  belongs_to :image
  belongs_to :tag

  validates :image_id, :uniqueness => {:scope =>:tag_id}
end
