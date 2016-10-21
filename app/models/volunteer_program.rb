class VolunteerProgram < ActiveRecord::Base
  belongs_to :organization
  belongs_to :volunteer
  has_one :zip, through: :organization
end
