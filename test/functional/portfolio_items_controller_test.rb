require File.join(File.dirname(__FILE__), "..", "test_helper.rb")

class PortfolioItemsControllerTest < ActionController::TestCase
  
  def setup
    @portfolio_item =  PortfolioItem.create(TestData::PortfolioItem.valid_options)
  end
  
  context "show action" do
    should "render show template" do
      get :show, :id => PortfolioItem.first.to_param
      assert_template 'show'
    end
  end
  
  context "new action" do
    should "render new template" do
      get :new
      assert_template 'new'
    end
  end
  
  context "create action" do
    should "render new template when model is invalid" do
      PortfolioItem.any_instance.stubs(:valid?).returns(false)
      post :create
      assert_template 'new'
    end
    
    should "redirect when model is valid" do
      post :create, :portfolio_item => TestData::PortfolioItem.valid_options
      assert_redirected_to portfolio_item_url(assigns(:portfolio_item))
    end
  end
  
  context "edit action" do
    should "render edit template" do
      get :edit, :id => PortfolioItem.first.to_param
      assert_template 'edit'
    end
  end
  
  context "update action" do
    should "render edit template when model is invalid" do
      PortfolioItem.any_instance.stubs(:valid?).returns(false)
      put :update, :id => PortfolioItem.first.to_param
      assert_template 'edit'
    end
  
    should "redirect when model is valid" do
      PortfolioItem.any_instance.stubs(:valid?).returns(true)
      put :update, :id => PortfolioItem.first.to_param
      assert_redirected_to portfolio_item_url(assigns(:portfolio_item))
    end
  end
  
  context "destroy action" do
    should "destroy model and redirect to index action" do
      portfolio_item = PortfolioItem.first
      delete :destroy, :id => portfolio_item.to_param
      assert_redirected_to root_url
      assert !PortfolioItem.exists?(portfolio_item.id)
    end
  end
end
