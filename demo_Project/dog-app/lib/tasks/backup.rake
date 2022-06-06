namespace :backup do
    task :create do
      # ...
      p "backup example"
    end
  
    task :list do
      # ...
    end
  
    task :restore do
      # ...
    end
    task create_examples: "apple" do
        # ...
        p "create examples"
    end
    task :coverage do
        ENV['COVERAGE'] = 'true'
        Rake::Task["backup:create_examples"].execute
        p "coverage"
    end
    
  end