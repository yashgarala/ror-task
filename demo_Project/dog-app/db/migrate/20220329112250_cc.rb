class Cc < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :sold_quantity, :integer

  end
end
