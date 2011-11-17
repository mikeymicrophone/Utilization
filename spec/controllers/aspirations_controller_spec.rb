require File.expand_path("../../spec_helper", __FILE__)

class AspirationsControllerSpec
  describe AspirationsController do
    render_views
    before do
      @thing = Thing.create :name => 'coolness'
    end
    
    it 'testing user helper' do
      valid_user.should be_valid
    end
    
    it 'should notify facebook' do
      sign_in valid_user
      post :create, :aspiration => {:thing_id => @thing.id, :user_id => valid_user.id}, :format => :js
      response.body.should =~ /share_activity_on_open_graph/
    end
    
    it 'should use correct open graph verb' do
      sign_in valid_user
      post :create, :aspiration => {:thing_id => @thing.id, :user_id => valid_user.id}, :format => :js
      response.body.should =~ /want_to_use/      
    end
    
    it 'should create an object' do
      sign_in valid_user
      post :create, :aspiration => {:thing_id => @thing.id, :user_id => valid_user.id}, :format => :js
      Aspiration.count.should == 1
    end
    
    it 'should reflect on thing' do
      sign_in valid_user
      post :create, :aspiration => {:thing_id => @thing.id, :user_id => valid_user.id}, :format => :js
      @thing.aspiring_users.count.should == 1
    end
  end
end