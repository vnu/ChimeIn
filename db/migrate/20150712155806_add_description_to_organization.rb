class AddDescriptionToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :description, :string, limit: 1000
    add_column :organizations, :phone, :string
    add_column :organizations, :image_url, :string
    add_column :organizations, :latitude, :string
    add_column :organizations, :longitude, :string
  end
end
