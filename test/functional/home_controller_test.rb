require File.dirname(__FILE__) + '/../test_helper'

class HomeControllerTest < ActionController::TestCase

  def setup
  end
  
  context "index action" do
    should "render index template" do
      get :index
      assert_template 'index'
    end
  end
  
end
