class Resume < ActiveRecord::Base

  validates_presence_of :name,      :on => :create, :message => "can't be blank"
  validates_presence_of :job_title, :on => :create, :message => "can't be blank"

  has_many :work_experiences, :dependent => :destroy
  has_many :education_items,  :dependent => :destroy

end

# == Schema Information
#
# Table name: resumes
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  job_title  :string(255)
#  skills     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

