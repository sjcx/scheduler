class RemoveStudents < ActiveRecord::Migration
  def up
    drop_table :students
  end

  def down
  end
end
