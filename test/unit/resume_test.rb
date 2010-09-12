require "test_helper.rb"

class ResumeTest < ActiveSupport::TestCase

  should have_many :work_experiences
  should have_many :education_items

  should have_db_column :name
  should have_db_column :job_title
  should have_db_column :skills

  should "be valid" do
    resume = Resume.new(TestData::Resume.valid_options)
    assert resume.valid?
  end

  should "not be valid w/o name" do
    resume = Resume.new(TestData::Resume.valid_options.merge(:name => nil))
    assert ! resume.valid?
    assert_equal ["can't be blank"], resume.errors[:name]
  end

  should "not be valid w/o body" do
    resume = Resume.new(TestData::Resume.valid_options.merge(:job_title => nil))
    assert ! resume.valid?
    assert_equal ["can't be blank"], resume.errors[:job_title]
  end

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

