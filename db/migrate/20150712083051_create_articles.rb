class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|

      t.string      :title, default: " "
      t.string      :date, default: " "
      t.text        :content, default: " "
      t.integer     :list_id, default: 0
      t.integer     :user_id, default: 0
      
      t.timestamps null: false
    end
  end
end
