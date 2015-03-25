class RemoveImageIdFromTag < ActiveRecord::Migration
  def change
    remove_column :tags, :image_id
  end
end
