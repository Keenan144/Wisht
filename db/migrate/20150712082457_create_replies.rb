class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|

      t.string      :title, default: " "
      t.string      :date, default: " "
      t.text        :content, default: " "
      t.integer     :comment_id, default: 0
      t.integer     :user_id, default: 0


      t.timestamps null: false
    end
  end
end
