require "test_helper"
require "generators/controller_custom/controller_custom_generator"

class ControllerCustomGeneratorTest < Rails::Generators::TestCase
  tests ControllerCustomGenerator
  destination Rails.root.join("tmp/generators")
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
