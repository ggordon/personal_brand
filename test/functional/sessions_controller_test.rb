require File.join(File.dirname(__FILE__), "..", "test_helper.rb")

class SessionsControllerTest < ActionController::TestCase
    
  context "new action" do
    setup do
      get :new
    end
    should_render_template :new
  end
  
  context "bad password" do
    setup do
      post :create, :password => 'junk', :username => 'junk'      
    end
    
    should_redirect_to("the signin page") { signin_url }
    should_set_the_flash_to /Bad username or password./i
  end
  
  context "good password" do
    setup do
      post :create, :password => 'passwd', :username => 'admin'      
    end
    should_redirect_to("the root path") { root_url }
    should_set_the_flash_to /Successfully signed in as admin./i
  end
  
  context "destroy action" do
    setup do
      delete :destroy      
    end
    should_redirect_to("the root path") { root_url }
    should_set_the_flash_to /Successfully signed out as admin./i
  end
end
