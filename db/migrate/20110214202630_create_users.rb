class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.text :bio
      t.string :phone
      t.string :preferred_contact
      t.string :login
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
