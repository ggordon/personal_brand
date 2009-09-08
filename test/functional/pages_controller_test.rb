require File.join(File.dirname(__FILE__), "..", "test_helper.rb")

class PagesControllerTest < ActionController::TestCase
  
  context "handling show" do
        
    should "respond with 404 for unknown template" do
      get :show, :id => 'junk-id'
      assert_response 404
    end
    
    %w(about).each do |page|
      should "render #{page} template" do
        get :show, :id => "#{page}"
        assert_response :success
        assert_template "pages/show/#{page}"
      end      
    end
    
  end

end
