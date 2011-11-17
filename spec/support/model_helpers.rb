def valid_user
  @valid_user ||= User.create :email => 'b@example.com', :password => 'password', :password_confirmation => 'password', :first_name => 'Firsty', :last_name => 'Lasty', :facebook_id => rand(10000000000000000)
end