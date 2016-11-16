class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :address
      t.string :opening_time
      t.string :closing_time
      t.string :branch_image

      t.timestamps
    end
  end
end
