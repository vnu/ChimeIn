class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :website
      t.string :location
      t.string :email
      t.boolean :is_credible, default: false
      t.boolean :disable, default: false
      t.timestamps null: false
    end
  end
end
