class Organization < ActiveRecord::Base
  has_many :volunteer_programs
  has_many :volunteers, through: :volunteer_programs, as: :user

  validates :name, :issue_type, :address, :city, :state, :zip, :website, presence: true
  validates :name, :address, uniqueness: true

  def location
    "#{self.address} #{self.city}, #{self.state} #{self.zip}"
  end
end
