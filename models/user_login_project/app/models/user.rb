class User < ActiveRecord::Base
	validates :email_address, presence: {message: "Please provide an email address"}
	validates :age, presence: {message: "Please provide an age"}, numericality: {message: "Please use a number"}
	validates :first_name, :last_name, presence: {message: "Please provide a name"}, length: {minimum: 2 , message: "Length of name needs to be at least 2 characters"}
	validates_numericality_of :age, :greater_than_or_equal_to => 10 , :message => "Age must be at least 10"
	validates_numericality_of :age, :less_than =>  150 , :message => "Age must be less than 150" 

end
