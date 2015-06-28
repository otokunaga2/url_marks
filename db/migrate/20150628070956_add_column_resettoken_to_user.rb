class AddColumnResettokenToUser < ActiveRecord::Migration
  def change
    add_column :users, :reset_password_token, :string, null: true, default: ""

    add_column :users, :reset_password_sent_at, :datetime, null: true, default: ""
    add_column :users, :remember_created_at, :datetime, null: true, default: ""
    add_index :users, [:reset_password_token], unique: true
  end
end
