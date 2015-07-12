class List < ActiveRecord::Base
  belongs_to :user
  has_many   :wishes
  has_many   :articles
end
