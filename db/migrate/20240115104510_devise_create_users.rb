# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email, null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.string :name, null: false
      t.text :profile, null: false
      t.text :occupation, null: false
      t.text :position, null: false

     ## Recoverable
     t.string   :reset_password_token
     t.datetime :reset_password_sent_at

     ## Rememberable
     t.datetime :remember_created_at

     # 省略

     t.timestamps null: false
   end

   add_index :users, :email,                unique: true
   add_index :users, :reset_password_token, unique: true
   # add_index :users, :confirmation_token,   unique: true
   # add_index :users, :unlock_token,         unique: true
  end
end
