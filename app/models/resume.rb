class Resume < ActiveRecord::Base
  attr_accessible :name, :job_title
  
  validates_presence_of :name, :on => :create, :message => "can't be blank"
  validates_presence_of :job_title, :on => :create, :message => "can't be blank"
  
  def self.valid_options
    {
      :name      => "Gogo Gordon",
      :job_title => "Watch Dog"
    }
  end
end
