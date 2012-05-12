class AddLocationsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :latitude, :float
    add_column :students, :longitude, :float
    add_column :students, :address1, :string
    add_column :students, :address2, :string
    add_column :students, :city, :string
    add_column :students, :state, :string
    add_column :students, :zip, :string
    add_column :students, :country, :string
  end
end
