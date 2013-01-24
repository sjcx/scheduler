class ChangeTutorPassword < ActiveRecord::Migration
  def up
    rename_column :tutors, :password, :password_hash
    add_column :tutors, :password_salt, :string
  end

  def down
  end
end
