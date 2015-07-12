class AddTitleToLists < ActiveRecord::Migration
  def change
    add_column :lists, :title, :string, default: " "
    add_column :lists, :user_id, :integer, default: 0
    add_column :lists, :description, :text, default: " "
  end
end
