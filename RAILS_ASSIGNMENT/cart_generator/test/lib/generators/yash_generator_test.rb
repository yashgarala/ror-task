require "test_helper"
require "generators/yash/yash_generator"

class YashGeneratorTest < Rails::Generators::TestCase
  tests YashGenerator
  destination Rails.root.join("tmp/generators")
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
