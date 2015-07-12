class Comment < ActiveRecord::Base
  belongs_to :wish
  has_many   :replys

  
end
