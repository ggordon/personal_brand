class Post < ActiveRecord::Base
  attr_accessible :title, :body
  
 has_friendly_id :title, :use_slug => true
end
