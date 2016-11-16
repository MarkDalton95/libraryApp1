class Branch < ActiveRecord::Base
	has_many :books, dependent: :destroy
	has_many :member, dependent: :destroy
	validates :address, presence: true
	validates :opening_time, presence: true

end
