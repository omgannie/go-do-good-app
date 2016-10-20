get '/volunteer_programs' do
  @all_programs = VolunteerProgram.all

  erb :'/volunteer_programs/index'
end
