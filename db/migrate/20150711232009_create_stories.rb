class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :title, limit: 1000
      t.text :content
      t.references :user, null: true
      t.references :organization, null: true
      t.boolean :disable, default: false
      t.timestamps null: false
    end
  end
end
