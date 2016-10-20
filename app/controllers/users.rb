get '/users/new' do
  erb :'/users/new'
end

# creates new user, then auto-logs them in after successful registration
post '/users' do
  user = User.create(params[:user])

  if user.valid?
    @user = User.authenticate(params[:user][:username], params[:user][:password])
    session[:user_id] = user.id
    redirect '/'
  else
    @errors = user.errors.full_messages
    erb :'/users/new'
  end
end

get '/login' do
  erb :login
end

# authenticating an existing user
# if successful, loads their user profile
# if not, shows errors
get '/users' do
  @user = User.authenticate(params[:user][:username], params[:user][:password])

  if @user
    session[:user_id] = @user.id

    erb :'/users/show'
  else
    @errors = ["Something wasn't right. Try again."]
    erb :login
  end
end

get '/users/:id' do
  @user = User.find(params[:id])

  erb :'/users/show'
end

delete '/logout' do
  if current_user
    session.delete(:user_id)
    redirect '/'
  end
end
