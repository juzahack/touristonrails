class Path < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_many :activities, through: :elements
	has_many :elements

end
