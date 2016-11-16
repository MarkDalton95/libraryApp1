class CreateBorroweds < ActiveRecord::Migration
  def change
    create_table :borroweds do |t|
      t.date :return_date
      t.date :date_due
      t.integer :Member_id
      t.integer :Book_id

      t.timestamps
    end
  end
end
