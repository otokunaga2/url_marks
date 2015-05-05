class ChangeColumnToBookmark < ActiveRecord::Migration
  
  #before change 
  def up
    change_column :bookmarks, user_id, :initeger, description, :text, read_flag, :integer, title , :string, favicon ,:string  
  end
  def change
  end
  def down
    change_column :bookmarks, user_id, :initeger, description, :text, read_flag, :integer    
  end
end
