class AddDojoColumnToStudents < ActiveRecord::Migration
  def change
    add_reference :students, :dojo, index: true, foreign_key: true
  end
end
