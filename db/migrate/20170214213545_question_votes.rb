class QuestionVotes < ActiveRecord::Migration
	def change
		create_table :questions_votes do |t|
			t.integer :question_upvotes
			t.integer :question_downvotes
			t.integer :answer_id, null: false
			t.integer :user_id, null: false
			t.timestamps null: false
		end
	end
end
