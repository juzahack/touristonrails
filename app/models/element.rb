class Element < ActiveRecord::Base
	belongs_to :path
	belongs_to :activity
end
