get '/organizations' do
  @organizations = Organization.all

  erb :'/organizations/show'
end

get '/organizations/new' do
  erb :'/organizations/new'
end

get '/organizations/video' do
  erb :'/organizations/video'
end

post '/organizations' do
  @organization = Organization.create(params[:organization])

  if @organization.valid?
    redirect "/organizations/#{@organization.id}"
  else
    @errors = @organization.errors.full_messages

    erb :'/organizations/new'
  end
end

get '/organizations/:id' do
  @organization = Organization.find(params[:id])

  erb :'/organizations/show'
end
