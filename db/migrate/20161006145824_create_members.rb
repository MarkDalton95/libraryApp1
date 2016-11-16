class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :member_address
      t.string :email
      t.string :name
      t.float :money_owed
	  t.string :password
      t.integer :Branch_id

      t.timestamps
    end
  end
end
