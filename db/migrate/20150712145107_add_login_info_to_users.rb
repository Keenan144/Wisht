class AddLoginInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :login, :datetime
    add_column :users, :login_count, :integer, :default => 0
  end
end
