class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
        t.column :email, :string
        t.column :password_hash, :string
        t.column :password_salt, :string
        t.column :created_at, :datetime
        t.column :updated_at, :datetime
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
