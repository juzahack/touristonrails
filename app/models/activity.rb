class Activity < ActiveRecord::Base
	has_and_belongs_to_many :paths
	has_many :path, through: :elements
	has_many :elements
	

	TYPES = [
		:cultur,
		:sport,
		:freetime,
		:eat,
		].freeze

	validates :kind, presence: true, :inclusion => {:in => TYPES}

	def kind
		read_attribute(:kind).to_sym			
	end

end
