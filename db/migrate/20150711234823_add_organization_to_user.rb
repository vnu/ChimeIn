class AddOrganizationToUser < ActiveRecord::Migration
  def change
    add_column :users, :organization_id, :integer, references: :user, null: true
    add_column :users, :username, :string
    add_column :users, :phone, :string
    add_column :users, :anonymous, :boolean, default: false
    add_column :users, :disable, :boolean, default: false
  end
end
