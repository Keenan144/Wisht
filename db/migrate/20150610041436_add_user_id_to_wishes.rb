class AddUserIdToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :user_id, :string
  end
end
