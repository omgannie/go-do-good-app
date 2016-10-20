require 'bcrypt'

class User < ActiveRecord::Base
  include BCrypt

  has_many :volunteer_programs, { :foreign_key => :volunteer_id }
  has_many :organizations, through: :volunteer_programs

  validates :first_name, :last_name, :username, :email, :hashed_password, presence: true
  validates :username, :email, uniqueness: true

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def self.authenticate(username, password)
    user = User.find_by(username: username)
    if user
      return user if user.password == password
    else
      nil
    end
  end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
end
