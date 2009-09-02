require File.dirname(__FILE__) + '/../test_helper'

class PostsControllerTest < ActionController::TestCase

  def setup
    @post = Post.create(TestData::Post.valid_options)
  end
  
  context "index action" do
    should "render index template" do
      get :index
      assert_template 'index'
    end
  end
  
  context "show action" do
    should "render show template" do
      get :show, :id => Post.first.id
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
      Post.any_instance.stubs(:valid?).returns(false)
      post :create
      assert_template 'new'
    end
    
    should "redirect when model is valid" do
      Post.any_instance.stubs(:valid?).returns(true)
      post :create, :post => TestData::Post.valid_options
      assert_redirected_to post_url(assigns(:post))
    end
  end
  
  context "edit action" do
    should "render edit template" do
      get :edit, :id => Post.first.id
      assert_template 'edit'
    end
  end
  
  context "update action" do
     should "render edit template when model is invalid" do
       Post.any_instance.stubs(:valid?).returns(false)
       put :update, :id => Post.first.id
       assert_template 'edit'
     end
   
     should "redirect when model is valid" do
       Post.any_instance.stubs(:valid?).returns(true)
       put :update, :id => Post.first.id 
       assert_redirected_to post_url(assigns(:post))
     end
   end
     
  context "destroy action" do
    should "destroy model and redirect to index action" do
      post = Post.first
      delete :destroy, :id => post.id
      assert_redirected_to posts_url
      assert !Post.exists?(post.id)
    end
  end
end
