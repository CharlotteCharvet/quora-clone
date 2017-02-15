class Question < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!

has_many :answers
belongs_to :user
has_many :question_vote

end
