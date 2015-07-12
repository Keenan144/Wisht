class AddListIdToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :list_id, :integer, default: 0
  end
end
