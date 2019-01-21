class AddBranchColumnToDojos < ActiveRecord::Migration
  def change
    add_column :dojos, :branch, :string
    add_column :dojos, :street, :string
    add_column :dojos, :city, :string
    add_column :dojos, :state, :string
  end
end
