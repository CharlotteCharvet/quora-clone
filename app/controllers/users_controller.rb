enable :sessions

#new
get '/users/new' do
	
	erb :"static/index"
end

#create
post '/users' do
	user = User.new(params[:user])
  	if user.save
  		session[:id] = user.id
  		#erb :"static/dashboard"
  		redirect "/users/#{current_user.id}/questions/new"
    	
    	# if save the new user will directly be on his session
  	else
    	# what should happen if the user keyed in invalid date?
    	redirect "/"
  	end
end


#index
get '/' do
	@users = User.all
  	erb :"static/index"
end

#show
get '/users/:id' do
  user = User.find_by(:id)
end


#edit
get '/users/:id/edit' do
	user = User.find_by(:id)
	#new password
	#lost password
end


#update
put '/users/:id'do
	user = User.find_by(:id)
	user.update(:id)
	#change password
	#chang name
end


#destroy
delete '/user/:id' do
	user = User.find_by(:id)
	user.destroy

end




# post '/signup' do
#   user = User.new(params[:user])
#   if user.save
#     # what should happen if the user is saved?
#   else
#     # what should happen if the user keyed in invalid date?
#   end
# end  




