class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.integer   :user_id, default: 0
      t.integer   :friend_id, default: 0

      t.timestamps null: false
    end
  end
end
