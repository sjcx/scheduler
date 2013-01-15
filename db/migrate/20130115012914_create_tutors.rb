class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :fname
      t.string :lname
      t.string :password
      t.text :bio

      t.timestamps
    end
  end
end
