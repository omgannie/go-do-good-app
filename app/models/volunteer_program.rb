class VolunteerProgram < ActiveRecord::Base
  belongs_to :organization
  belongs_to :volunteer
end
