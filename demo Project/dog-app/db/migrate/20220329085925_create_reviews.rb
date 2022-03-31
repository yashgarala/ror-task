class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :ratings
      t.integer :user_id
      t.text :description
      t.references :book
      t.timestamps
    end
    add_foreign_key :reviews, :books,column: :book_id
  end
end
