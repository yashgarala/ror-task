class CreateIndustriesSectorsjoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :sectors, :industries

  end
end
