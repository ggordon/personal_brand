require File.join(File.dirname(__FILE__), "..", "test_helper.rb")

class PortfolioItemTest < ActiveSupport::TestCase
  
  should "be valid" do
    portfolio_item = PortfolioItem.new(TestData::PortfolioItem.valid_options)
    assert portfolio_item.valid?
  end
  
  should "not be valid w/o title" do
    portfolio_item = PortfolioItem.new(TestData::PortfolioItem.valid_options.merge(:title => nil))
    assert ! portfolio_item.valid?   
    assert_match(/blank/, portfolio_item.errors[:title]) 
  end

  should "not be valid w/o body" do
    portfolio_item = PortfolioItem.new(TestData::PortfolioItem.valid_options.merge(:body => nil))
    assert ! portfolio_item.valid?   
    assert_match(/blank/, portfolio_item.errors[:body]) 
  end
  
end
