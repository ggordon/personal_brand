Factory.define :resume do |resume|
  resume.name      Resume.valid_options[:name]
  resume.job_title Resume.valid_options[:job_title]
end