class EducationItem < ActiveRecord::Base

  belongs_to :resume

end

# == Schema Information
#
# Table name: education_items
#
#  id        :integer         not null, primary key
#  resume_id :integer
#  title     :string(255)
#  end_date  :date
#

