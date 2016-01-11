class User < ActiveRecord::Base
  has_secure_password
  has_many :lessons
  def self.authenticate!(username, password)
    user = self.find_by(:username => username)
    user.authenticate(password) if user
  end

end
