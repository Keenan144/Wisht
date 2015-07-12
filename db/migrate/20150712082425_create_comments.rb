class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|

      t.string      :title
      t.string      :date
      t.text        :content
      t.integer     :wish_id
      t.integer     :user_id


      t.timestamps null: false
    end
  end
end
