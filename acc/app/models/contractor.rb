class Contractor < ActiveRecord::Base
	validates :name, presence: true
end
