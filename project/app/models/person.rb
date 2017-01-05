class Person < ApplicationRecord
	has_many :pets, dependent: :destroy
	validates :name, :email, :phonenumber, presence: true, uniqueness: true
	validates :phonenumber, length: { is: 10 }
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
