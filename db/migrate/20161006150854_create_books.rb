class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.float :price
      t.string :author
      t.boolean :available
      t.string :book_image
      t.integer :Branch_id

      t.timestamps
    end
  end
end
