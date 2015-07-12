class AddPriceToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :price, :string, default: " "
  end
end
