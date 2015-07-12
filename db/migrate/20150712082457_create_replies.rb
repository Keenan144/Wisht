class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|

      t.string      :title
      t.string      :date
      t.text        :content
      t.integer     :comment_id
      t.integer     :user_id


      t.timestamps null: false
    end
  end
end
