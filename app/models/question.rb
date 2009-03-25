class Question < ActiveRecord::Base
	has_many :votes
	has_many :unvotes

	def vote_count
		votes.count - unvotes.count
	end
end
