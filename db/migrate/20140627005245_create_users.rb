class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string  :uid
      t.string  :provider
      t.string  :first_name
      t.string  :last_name
      t.string  :username
      t.integer :username_manual, :default => 0
      t.string  :email
      t.integer :gender, :default => 0
      t.integer :total, :default => 0


      t.timestamps
    end
  end
end
