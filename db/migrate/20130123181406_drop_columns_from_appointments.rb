class DropColumnsFromAppointments < ActiveRecord::Migration
  def up
    remove_column :appointments, :tutor_fname 
    remove_column :appointments, :tutor_lname
    remove_column :appointments, :tutor_bio
  end

  def down
  end
end
