class Question < ActiveRecord::Base
	has_many :votes

	def vote_count
		votes.find(:all, :conditions => { :up => true }).count - votes.find(:all, :conditions => { :up => false }).count
	end
end
