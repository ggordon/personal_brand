class PortfolioItem < ActiveRecord::Base
  
  validates_presence_of :title, :on => :create, :message => "can't be blank"
  validates_presence_of :body, :on => :create, :message => "can't be blank"
  
  has_permalink :title, :slug, :update => true
  
  def to_param
    slug
  end
  
end
