require File.join(File.dirname(__FILE__), "..", "test_helper.rb")

class ResumeTest < ActiveSupport::TestCase

  should "be valid" do
    resume = Resume.new(Resume.valid_options)
    assert resume.valid?
  end
  
  should "not be valid w/o name" do
    resume = Resume.new(Resume.valid_options.merge(:name => nil))
    assert ! resume.valid?   
    assert_match(/blank/, resume.errors[:name]) 
  end

  should "not be valid w/o body" do
    resume = Resume.new(Resume.valid_options.merge(:job_title => nil))
    assert ! resume.valid?   
    assert_match(/blank/, resume.errors[:job_title]) 
  end
  
end
