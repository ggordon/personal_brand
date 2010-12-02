require "test_helper"

class PortfolioItemTest < ActiveSupport::TestCase

  should have_db_column :title
  should have_db_column :slug
  should have_db_column :url
  should have_db_column :image
  should have_db_column :body

  should "be valid" do
    portfolio_item = PortfolioItem.new(TestData::PortfolioItem.valid_options)
    assert portfolio_item.valid?
  end

  should "not be valid w/o title" do
    portfolio_item = PortfolioItem.new(TestData::PortfolioItem.valid_options.merge(:title => nil))
    assert ! portfolio_item.valid?
    assert_equal ["can't be blank"], portfolio_item.errors[:title]
  end

  should "not be valid w/o body" do
    portfolio_item = PortfolioItem.new(TestData::PortfolioItem.valid_options.merge(:body => nil))
    assert ! portfolio_item.valid?
    assert_equal ["can't be blank"], portfolio_item.errors[:body]
  end

end

# == Schema Information
#
# Table name: portfolio_items
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  slug       :string(255)
#  url        :string(255)
#  image      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

