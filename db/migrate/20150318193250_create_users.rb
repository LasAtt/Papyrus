class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest

      t.timestamps null: false
    end

    add_column :images, :user_id, :integer
  end
end
