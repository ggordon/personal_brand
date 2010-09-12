class WorkExperience < ActiveRecord::Base

  belongs_to :resume

end

# == Schema Information
#
# Table name: work_experiences
#
#  id         :integer         not null, primary key
#  resume_id  :integer
#  title      :string(255)
#  start_date :date
#  end_date   :date
#  body       :text
#

