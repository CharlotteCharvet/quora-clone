class User < ActiveRecord::Base
  has_many :questions
  has_many :answers

	# What if a user tries to input an email or password that is invalid in terms of format or length?
	# with_options if: :is_admin? do |admin|
 #    admin.validates :password, length: { minimum: 10 }
 #    admin.validates :email, presence: true
 #  end
  	# What if 2 users key in the same email?
  	validates :email, :uniqueness => true
  	# What if a user inputs an email that has invalid format such as nextacademy.com or joshgmail.com?
	validates :email, :format => { :with => /[\S]+@[a-z]+\.[a-z][a-z]+/,
	    :message => "Enter in a valid email, please!" }




	has_secure_password
end
