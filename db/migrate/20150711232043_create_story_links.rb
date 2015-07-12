class CreateStoryLinks < ActiveRecord::Migration
  def change
    create_table :story_links do |t|
      t.references :story
      t.references :user
      t.string :url
      t.string :description
      t.timestamps null: false
    end
  end
end
