class AddLocationsToCommunities < ActiveRecord::Migration
  def change
    add_column :communities, :latitude, :float
    add_column :communities, :longitude, :float
    add_column :communities, :address1, :string
    add_column :communities, :address2, :string
    add_column :communities, :city, :string
    add_column :communities, :state, :string
    add_column :communities, :zip, :string
    add_column :communities, :country, :string
  end
end
