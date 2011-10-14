class FacebookController < ApplicationController
  def login
    if current_facebook_user
      current_facebook_user.fetch
      @user = current_user || User.find_by_facebook_id(current_facebook_user.id) || User.find_by_email(current_facebook_user.email)
      if @user
        @user.update_attributes :facebook_id => current_facebook_user.id,
         :access_token => current_facebook_user.client.access_token,
         :city => current_facebook_user.location
        sign_in @user
      else
        @user = User.create :first_name => current_facebook_user.first_name,
         :last_name => current_facebook_user.last_name,
         :email => current_facebook_user.email,
         :facebook_id => current_facebook_user.id,
         :access_token => current_facebook_user.client.access_token,
         :city => current_facebook_user.location
        # @user.confirm!
        sign_in @user
      end
    end
    redirect_to root_url
  end
end
