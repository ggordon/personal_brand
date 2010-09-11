class PortfolioItem < ActiveRecord::Base
  
  validates_presence_of :title, :on => :create, :message => "can't be blank"
  validates_presence_of :body,  :on => :create, :message => "can't be blank"
  
#  has_permalink :title
  
  def to_param
    slug
  end
  
  def image_path
    "/images/#{image}"
  end
  
end
