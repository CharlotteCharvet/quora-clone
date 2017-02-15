class Answer < ActiveRecord::Base
# This is Sinatra! Remember to create a migration!
has_one :question
belongs_to :user
has_many :answer_vote

end
