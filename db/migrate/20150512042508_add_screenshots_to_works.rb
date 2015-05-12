class AddScreenshotsToWorks < ActiveRecord::Migration
  def up
    add_column :works, :screenshots, :string
  end

  def down
    remove_column :works, :screenshots
  end
end
