class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.string :my_description
      t.boolean :read_flag
      t.string :title
      t.string :favicon
      t.text :object_description
      t.text :object_image

      t.timestamps null: false
    end
  end
end
