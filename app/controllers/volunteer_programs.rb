get '/volunteer_programs' do
  @nearby_programs = VolunteerProgram.where(zip: Organization.location)

  erb :'/volunteer_programs/index'
end
