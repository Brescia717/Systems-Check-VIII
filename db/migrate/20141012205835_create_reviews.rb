class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :body, null: false
      t.integer :rating, null: false
      t.integer :book_id, null: false

      t.timestamps
    end
  end
end
