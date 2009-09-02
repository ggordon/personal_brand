class Post < ActiveRecord::Base
  #attr_accessible :title, :body
  
  validates_presence_of :title, :on => :create, :message => "can't be blank"
  validates_presence_of :body, :on => :create, :message => "can't be blank"
  
  has_friendly_id :title, :use_slug => true
 
end
