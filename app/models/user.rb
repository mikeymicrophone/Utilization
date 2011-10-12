class User < ActiveRecord::Base
  
  def name
    first_name.to_s + ' ' + last_name.to_s
  end
end
