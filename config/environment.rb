# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  
  config.gem "justinfrench-formtastic", :lib => 'formtastic', :source => 'http://gems.github.com'
  config.gem "haml"
  config.gem 'chriseppstein-compass', :lib => 'compass', :source => 'git://github.com/chriseppstein/compass.git'
  config.gem 'chriseppstein-compass-colors', :lib => 'compass-colors', :source => 'git://github.com/chriseppstein/compass-colors.git'
  config.gem 'mislav-will_paginate', :lib => 'will_paginate', :source  => 'http://gems.github.com'
  config.gem 'norman-disqus', :lib => 'disqus'

  config.time_zone = 'UTC'

  config.after_initialize do
    Disqus::defaults[:account] = "garyfgordon"
    Disqus::defaults[:developer] = true
    
  end  
end

