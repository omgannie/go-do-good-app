get '/organizations' do
  current_location = # need to communicate with API
  @organizations = Organization.where(zip: current_location.zip)

  erb :'/organizations/show'
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
