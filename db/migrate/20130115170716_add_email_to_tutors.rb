class AddEmailToTutors < ActiveRecord::Migration
  def change
    add_column :tutors, :email, :string
  end
end
