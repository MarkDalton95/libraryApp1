class AddAttachmentToMembers < ActiveRecord::Migration
  def change
    add_column :members, :attachment, :string
  end
end
