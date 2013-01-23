class ChangePasswordForStudents < ActiveRecord::Migration
  def up
    #rename_column :students, :password, :password_hash
    #add_column :students, :password_salt, :string
  end

  def down
  end
end
