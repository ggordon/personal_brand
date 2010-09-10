require File.dirname(__FILE__) + '/../test_helper'

class PostTest < ActiveSupport::TestCase
  
  should "be valid" do
    post = Post.new(TestData::Post.valid_options)
    assert post.valid?
  end
  
  should "not be valid w/o title" do
    post = Post.new(TestData::Post.valid_options.merge(:title => nil))
    assert ! post.valid?   
    assert_equal ["can't be blank"], post.errors[:title]
  end

  should "not be valid w/o body" do
    post = Post.new(TestData::Post.valid_options.merge(:body => nil))
    assert ! post.valid?   
    assert_equal ["can't be blank"], post.errors[:body] 
  end
  
end
