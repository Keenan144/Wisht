class AddViewsToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :views, :integer, :default => 1
  end
end
