class AddTechnologiesAndUrlToWorks < ActiveRecord::Migration
  def up
    add_column :works, :technologies, :string
    add_column :works, :uri, :string
  end

  def down
    remove_column :works, :technologies, :string
    remove_column :works, :uri, :string
  end
end