class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :year
      t.text :description
      t.string :category
    end
  end
end
