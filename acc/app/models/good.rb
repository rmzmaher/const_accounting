class Good < ActiveRecord::Base
	validates :name, presence: true
end
