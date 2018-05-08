class Dojo < ActiveRecord::Base
	has_many :students, dependent: :destroy
	validates :branch, :street, :city, presence:true, length:{ in: 3..35}
	validates :state, presence: true, length: { is: 2}
end
