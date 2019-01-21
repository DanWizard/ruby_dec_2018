class AddLocationColumnToDojos < ActiveRecord::Migration
  def change
    add_column :dojos, :location, :string
    add_column :dojos, :comment, :string
  end
end
