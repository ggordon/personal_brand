begin
  require 'rcov/rcovtask'
  require 'cucumber/rake/task'
  
  namespace :rcov do
    RCOV_OPTS = %w{--rails --exclude osx\/objc,gems\/,spec\/,features\/,\/test --aggregate coverage.data}
    Cucumber::Rake::Task.new(:cucumber) do |t|    
      t.rcov = true
      t.rcov_opts = RCOV_OPTS
      t.rcov_opts << %[-o "coverage"]
      t.fork = true # Explicitly fork
    end
    
    Rcov::RcovTask.new(:test) do |t|
      t.test_files = FileList['test/**/*_test.rb']
      t.verbose = true     # uncomment to see the executed command
      t.rcov_opts = RCOV_OPTS
    end

    desc "Run both specs and features to generate aggregated coverage"
    task :all do |t|
      rm "coverage.data" if File.exist?("coverage.data")
      Rake::Task["rcov:cucumber"].invoke
      Rake::Task["rcov:test"].invoke
    end

  end
  
  namespace :test do
    desc 'Run both tests and features.'
    task :all do
      Rake::Task["test"].invoke
      Rake::Task["features"].invoke      
    end
  end
  
rescue LoadError
  desc 'rcov not available'
  task :rcov do
    abort 'rcov not installed.'
  end
end