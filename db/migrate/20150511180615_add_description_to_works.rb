class AddDescriptionToWorks < ActiveRecord::Migration
  def up
    add_column :works, :description, :text
  end

  def down
    remove_column :works, :description
  end
end
