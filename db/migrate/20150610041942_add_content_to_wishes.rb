class AddContentToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :content, :string, default: " "
  end
end
