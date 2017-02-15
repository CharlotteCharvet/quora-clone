#create
post '/questions/:id/answers' do
	question = Question.find_by(id: params[:id])
	answer = question.answers.create(body: params[:body], user_id: session[:id], question_id: params[:id])
  
  	redirect "/questions/#{params[:id]}/answers/new"
end




#new
get '/questions/:id/answers/new' do
	
	@question = Question.find_by(id: params[:id])
	@answers= Answer.all
	# erb :"static/index"
	erb :"static/answer"
end





#edit
get '/questions/:id/answers/:id/edit' do
	@answer = Answer.find_by(:id)
end


# #show
# get '/questions/:id/answers/:id' do
#   answer = Answer.find_by(:id)
# end


# #update
# put '/questions/:id/answers/:id'do
# 	@answer = Answer.find_by(:id)
# 	@answer.update(:title)

# end

# #index
# get '/questions/:id/answers' do
# 	@answers = Answer.all
#   	erb :"static/index"
# end

# #destroy
# delete '/questions/:id/answers/:id' do
# 	@answer = Answer.find_by(:id)
# 	@answer.destroy

#   #@user.destroy

# end






