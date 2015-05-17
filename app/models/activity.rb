class Activity < ActiveRecord::Base
	has_and_belongs_to_many :paths
	has_many :path, through: :elements
	has_many :elements
	

	TYPES = [
		:cultur,
		:sport,
		:freetime,
		#:eat,
		].freeze

	#validates :category, presence: true, :inclusion => {:in => TYPES}
	#validates :kind, presence: true, :inclusion => {:in => User::TYPES}

	def kind
		read_attribute(:kind).to_sym			
	end

	# def category
	# 	read_attribute(:category).to_sym			
	# end

	def self.search(query)
		#@act=where("category IN (?)", query[:category]).where(cost: query[:cost],weather: query[:weather]).limit(2) 
		#@act<<where(cost: query[:cost], weather: query[:weather], category: "eat").limit(1)
		#@act<<where("category IN (?)", query[:category]).where(cost: query[:cost], weather: query[:weather]).limit(2).offset(2)
		@act=all
	end

	def morning
		where(cost: query[:cost], weather: query[:weather]) 
	end

	def afternoon
		
	end
end
