class AddCommentsToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :comments, :text
  end
end
