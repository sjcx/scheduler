class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :student_id
      t.integer :tutor_id
      t.date :date
      t.integer :slot

      t.timestamps
    end
  end
end
