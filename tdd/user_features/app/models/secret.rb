class Secret < ActiveRecord::Base
  belongs_to :user
  validates :content, :user_id, presence:true
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes, source: :user
end
