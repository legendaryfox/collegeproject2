class AddFieldsToStudent < ActiveRecord::Migration
  def change
    add_column :students, :first_name, :string
    add_column :students, :last_name, :string
    add_column :students, :school, :string
    add_column :students, :about_me, :text
  end
end
