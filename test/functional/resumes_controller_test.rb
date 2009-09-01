require File.join(File.dirname(__FILE__), "..", "test_helper.rb")

class ResumesControllerTest < ActionController::TestCase
  def setup
    @resume = Resume.create(Resume.valid_options)
  end
  
  context "show action" do
    should "render show template" do
      get :show, :id => Resume.first.id
      assert_template 'show'
    end
  end
end
