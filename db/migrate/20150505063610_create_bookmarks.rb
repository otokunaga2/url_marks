class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :user_id
      t.string :url
      t.text :description
      t.integer :read_flag

      t.timestamps null: false
    end
  end
end
