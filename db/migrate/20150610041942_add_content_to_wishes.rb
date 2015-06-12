class AddContentToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :content, :string
  end
end
