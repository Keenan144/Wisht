class AddUrlToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :url, :string
  end
end
