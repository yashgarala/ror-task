class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.references :author
      t.string :book
      t.string :sold_quantity
      t.string :name
      t.boolean :published
      t.timestamps

    end
    add_foreign_key :books, :authors, column: :author_id
  end
end
