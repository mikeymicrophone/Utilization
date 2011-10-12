class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :trackable, :validatable
  
  def name
    first_name.to_s + ' ' + last_name.to_s
  end
end
