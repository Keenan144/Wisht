class AddSiteToWishes < ActiveRecord::Migration
  def change
    add_column :wishes, :site, :string
  end
end
