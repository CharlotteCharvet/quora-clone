class AnswerVotes < ActiveRecord::Migration
	def change
		create_table :answers_votes do |t|
			t.integer :answer_upvotes
			t.integer :answer_downvotes
			t.integer :question_id, null: false
			t.integer :user_id, null: false
			t.timestamps null: false
		end
	end
end
