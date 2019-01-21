class AddLangColumnToDojos < ActiveRecord::Migration
  def change
    add_column :dojos, :lang, :string
  end
end
