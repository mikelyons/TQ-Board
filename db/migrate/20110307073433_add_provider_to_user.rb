class AddProviderToUser < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.string :provider
    end
    User.update_all ["provider = ?", nil]
  end

  def self.down
    remove_column :users, :provider
  end
end
