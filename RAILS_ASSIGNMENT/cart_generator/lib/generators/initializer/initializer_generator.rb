class InitializerGenerator < Rails::Generators::Base
  source_root File.expand_path("templates", __dir__)
  def yash
    create_initializer_file
  end
  private
  def create_initializer_file
    create_file "config/initializers/initializer.rb", "# Add initialization content here"
  end

end
