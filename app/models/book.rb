class Book < ActiveRecord::Base
	belongs_to :branch
	has_one :borrowed
	has_many :comments, :dependent => :destroy
	validates:title, presence: true
	validates:price, presence: true
	validates:author, presence: true
	
	def average_rating
			comments.average(:rating)
	end
	
	def self.search(search)
		if search
			where(["title LIKE ?","%#{search}%"])
		else
			all
		end
	end
			
	
end
