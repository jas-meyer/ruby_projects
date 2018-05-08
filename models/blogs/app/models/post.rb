class Post < ActiveRecord::Base
  belongs_to :blog
  validates :title, presence:true, length:{minimum: 7}
  validates :content, presence:true
  validates :blog_id, presence:true
  has_many :messages, dependent: :destroy
end
