class Resume < ActiveRecord::Base
  
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :job_title, :on => :create, :message => "can't be blank"
  
  has_many :work_experiences, :dependent => :destroy
  has_many :education_items, :dependent => :destroy
  
end
