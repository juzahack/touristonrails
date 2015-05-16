class Activity < ActiveRecord::Base
	has_and_belongs_to_many :paths
	has_many :path, through: :elements
	has_many :elements
end
