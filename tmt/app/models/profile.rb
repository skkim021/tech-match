class Profile < ActiveRecord::Base
	validates :name, presence: true
	validates :description, presence: true
	validates :salary, presence: true
end
