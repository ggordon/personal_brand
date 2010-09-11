require File.dirname(__FILE__) + '/../test_helper'

class PostsControllerTest < ActionController::TestCase

  def setup
    @post = Factory.create(:post)
  end
  
  def authenticate
    session['admin'] = 'authenticated'
  end
  
  context "index action" do
    should "render index template" do
      get :index
      assert_redirected_to signin_url
    end
  end
  
  context "show action" do
    should "render show template" do
      get :show, :id => @post.id
      assert_template 'show'
    end
  end
  
  context "new action" do
    should "render new template" do
      get :new
      assert_redirected_to signin_url
    end
  end
  
  context "create action" do
    should "render new template when model is invalid" do
      Post.any_instance.stubs(:valid?).returns(false)
      post :create
      assert_redirected_to signin_url
    end
    
    should "redirect when model is valid" do
      post :create, :post => TestData::Post.valid_options
      assert_redirected_to signin_url
    end
  end
  
  context "edit action" do
    should "render edit template" do
      get :edit, :id => @post.id
      assert_redirected_to signin_url
    end
  end
  
  context "update action" do
     should "render edit template when model is invalid" do
       Post.any_instance.stubs(:valid?).returns(false)
       put :update, :id => @post.id
       assert_redirected_to signin_url
     end
   
     should "redirect when model is valid" do
       Post.any_instance.stubs(:valid?).returns(true)
       put :update, :id => @post.id
       assert_redirected_to signin_url
     end
   end
     
  context "destroy action" do
    should "destroy model and redirect to index action" do
      post = Post.first
      delete :destroy, :id => post.id
      assert_redirected_to signin_url
    end
  end

  context "index action for admin" do
    setup do
      authenticate
      get :index
    end
    should "render index template" do
      assert_template 'index'
    end
  end
  
  context "show action for admin" do
    setup do
      authenticate
      @post = Factory.create(:post)
      get :show, :id => @post.id
    end

    should "render show template" do
      assert_template 'show'
    end
  end
  
  context "new action for admin" do
    setup do
      authenticate
      get :new
    end
    should "render new template" do
      assert_template 'new'
    end
  end
  
  context "create action for admin" do
    setup do
      authenticate
    end

    should "render new template when model is invalid" do
      Post.any_instance.stubs(:valid?).returns(false)
      post :create
      assert_template 'new'
    end
    
    should "redirect when model is valid" do
      post :create, :post => TestData::Post.valid_options
      assert_redirected_to post_url(assigns(:post).id)
    end
  end
  
  context "edit action for admin" do
    setup do
      authenticate
      get :edit, :id => @post.id
    end
    should "render edit template" do
      assert_template 'edit'
    end
  end
  
  context "update action for admin" do
    setup do
      authenticate
    end

    should "render edit template when model is invalid" do
      Post.any_instance.stubs(:valid?).returns(false)
      put :update, :id => @post.id
      assert_template 'edit'
    end
   
    should "redirect when model is valid" do
      Post.any_instance.stubs(:valid?).returns(true)
      put :update, :id => @post.id
      assert_redirected_to post_url(assigns(:post))
    end
  end
     
  context "destroy action for admin" do
    setup do
      authenticate
      @post = Post.first
      delete :destroy, :id => @post.id
    end
    should "destroy model and redirect to index action" do
      assert_redirected_to posts_url
      assert !Post.exists?(@post.id)
    end
  end

end
