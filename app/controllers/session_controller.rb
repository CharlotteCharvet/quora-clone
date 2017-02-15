require 'byebug'
enable :sessions

#login page acces only 

get '/sessions/new' do
 	erb :"static/login"
end

#open the session page (verify the )
post '/sessions' do
	current_user = User.find_by(email: params[:email])
	if current_user && current_user.authenticate(params[:password])
		session[:id] = current_user.id
		
		redirect "/users/#{current_user.id}/questions/new"
		#erb :"static/dashboard"

	else
		erb :"static/login"
	end

end


delete '/sessions/:id' do
	
	session.clear
	redirect '/sessions/new'
end
