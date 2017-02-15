get '/questions' do
	@questions = Question.all

  	erb :"static/index"
end

#new
get '/users/:id/questions/new' do
	@questions = Question.all
	erb :"static/question"
end

#create
post '/users/:id/questions' do

	user = User.find_by_id(session[:id])
	question = user.questions.create(params[:user])
	#erb :"static/dashboard"
	redirect "/users/#{session[:id]}/questions"
  	
end

#index
get '/users/:id/questions' do
	@questions = Question.all
  	erb :"static/question"
end

# #show
# get '/users/:id/questions/:id' do
#   @question = Question.find_by(:id)
# end




# #destroy
# delete '/users/:id/questions/:id' do
# 	 @question = Question.find_by(:id)
# 	 @question.destroy

# end


#edit
get '/users/:id/questions/:id/edit' do
	#@question = Question.find_by(:id)
end


#update
put '/users/:id/questions/:id'do
	# @question = Question.find_by(:id)
	# @question.update(:title)

end
