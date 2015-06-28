class AddSiginincolumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :sign_in_count ,:integer, null: false, default:0 
    add_column :users, :current_sign_in_at  ,:datetime, null: true, default: ""
    add_column :users, :last_sign_in_at  ,:datetime, null: true, default: ""
    add_column :users, :current_sign_in_ip   ,:string, null: true, default: ""
    add_column :users, :last_sign_in_ip    ,:string, null: true, default: ""
  end
end
