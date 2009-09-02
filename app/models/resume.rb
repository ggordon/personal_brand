class Resume < ActiveRecord::Base
  
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :job_title, :on => :create, :message => "can't be blank"
  
end
