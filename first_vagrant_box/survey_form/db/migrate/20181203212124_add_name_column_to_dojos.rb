class AddNameColumnToDojos < ActiveRecord::Migration
  def change
    add_column :dojos, :name, :string
  end
end
