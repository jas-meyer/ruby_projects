class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :secret
  validates :secret_id, :user_id, presence:true
end
