class ChangeDatatype < ActiveRecord::Migration[7.0]
  def change
    change_column :physicians, :unique_id, :bigint

  end
end
