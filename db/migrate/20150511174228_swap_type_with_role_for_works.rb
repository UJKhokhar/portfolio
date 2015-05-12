class SwapTypeWithRoleForWorks < ActiveRecord::Migration
  def up
    remove_column :works, :type
    add_column :works, :role, :string
  end

  def down
    add_column :works, :type
    remove_column :works, :role
  end
end
