class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|

      t.string      :title
      t.string      :date
      t.text        :content
      t.integer     :list_id
      t.integer     :user_id
      
      t.timestamps null: false
    end
  end
end
