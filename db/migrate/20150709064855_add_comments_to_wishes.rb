class AddCommentsToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :comments, :text, default: " "
  end
end
