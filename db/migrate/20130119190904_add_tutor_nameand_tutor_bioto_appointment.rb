class AddTutorNameandTutorBiotoAppointment < ActiveRecord::Migration
  def change
    add_column :appointments, :tutor_fname, :string
    add_column :appointments, :tutor_lname, :string
    add_column :appointments, :tutor_bio, :text
  end


end
