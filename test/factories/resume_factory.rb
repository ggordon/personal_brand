Factory.define :resume do |resume|
  resume.name      TestData::Resume.valid_options[:name]
  resume.job_title TestData::Resume.valid_options[:job_title]
end