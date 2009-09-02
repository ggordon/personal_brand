require File.join(File.dirname(__FILE__), "..", "test_helper.rb")

class PortfoliosControllerTest < ActionController::TestCase
  context "show action" do
    should "render show template" do
      get :show
      assert_template 'show'
    end
  end
end
