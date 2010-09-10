require File.join(File.dirname(__FILE__), "..", "test_helper.rb")

class SessionsControllerTest < ActionController::TestCase
    
  context "new action" do
    setup do
      get :new
    end
    should render_template :new
  end
  
  context "bad password" do
    setup do
      post :create, :password => 'junk', :username => 'junk'      
    end
    
    should redirect_to("the signin page") { signin_url }
    should set_the_flash #/Bad username or password./i
  end
  
  context "good password" do
    setup do
      post :create, :password => 'passwd', :username => 'admin'      
    end
    should redirect_to("the root path") { root_url }
    should set_the_flash #/Successfully signed in as admin./i
  end
  
  context "destroy action" do
    setup do
      delete :destroy      
    end
    should redirect_to("the root path") { root_url }
    should set_the_flash #/Successfully signed out as admin./i
  end
end
