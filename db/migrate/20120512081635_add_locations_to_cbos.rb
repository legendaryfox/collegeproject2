class AddLocationsToCbos < ActiveRecord::Migration
  def change
    add_column :cbos, :latitude, :float
    add_column :cbos, :longitude, :float
    add_column :cbos, :address1, :string
    add_column :cbos, :address2, :string
    add_column :cbos, :city, :string
    add_column :cbos, :state, :string
    add_column :cbos, :zip, :string
    add_column :cbos, :country, :string
  end
end
