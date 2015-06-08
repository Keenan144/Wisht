class AddContentToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :name, :string
    add_column :wishes, :comments, :text
    add_column :wishes, :list_id, :integer
  end
end
