class Member < ActiveRecord::Base
	belongs_to :branch
	has_many :borroweds
	has_many :comments
	validates:name, presence: true
	validates:email, presence: true
	validates:email, uniqueness: true
	has_secure_password
	validates_uniqueness_of :email
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
	mount_uploader :attachment, AttachmentUploader
end
