class CreateDojos < ActiveRecord::Migration
  def change
    create_table :dojos do |t|

      t.timestamps null: false
    end
  end
end
