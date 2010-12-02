require 'test_helper'

class PostTest < ActiveSupport::TestCase

  should have_db_column :title
  should have_db_column :body
  should have_db_column :slug

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

# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  body       :text
#  slug       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

