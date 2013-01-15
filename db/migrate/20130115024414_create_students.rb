class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fname
      t.string :lname
      t.string :program
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
