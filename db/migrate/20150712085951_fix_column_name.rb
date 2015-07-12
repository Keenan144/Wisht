class FixColumnName < ActiveRecord::Migration
  def self.up
    rename_column :wishes, :comments, :notes
  end
end
