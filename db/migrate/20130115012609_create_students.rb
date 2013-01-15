class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :fname
      t.string :string
      t.string :lname
      t.string :string
      t.string :program
      t.string :string
      t.string :email
      t.string :string
      t.string :password
      t.string :string
      t.string :banned
      t.string :boolean

      t.timestamps
    end
  end
end
