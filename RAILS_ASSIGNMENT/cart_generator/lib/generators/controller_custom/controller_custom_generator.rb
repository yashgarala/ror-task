class ControllerCustomGenerator < Rails::Generators::NamedBase
  source_root File.expand_path("templates", __dir__)
  argument :name
  def file_name
    puts "Controller name :- #{name}"
  end

  def create_controller
    capital =name.capitalize
    create_file "app/controllers/#{name}_controller.rb","class #{capital}Controller < ApplicationController\nend"
  end
  def add_route 
    route_string="resources :#{name}"
    route route_string
  end
  

end
