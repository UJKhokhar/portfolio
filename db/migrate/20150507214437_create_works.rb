class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :name
      t.string :type
      t.string :github
      t.references :user
      t.timestamps null: false
    end
  end
end
