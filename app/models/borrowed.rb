class Borrowed < ActiveRecord::Base
	belongs_to:member
	belongs_to:book
	validates:due_date, presence: true

end
