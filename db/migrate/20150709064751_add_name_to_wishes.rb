class AddNameToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :name, :string, default: " "
  end
end
