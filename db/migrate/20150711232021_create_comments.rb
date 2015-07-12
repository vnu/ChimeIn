class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :story
      t.references :user
      t.string :comment_type, default: 'heart' #comment, heart, hug,
      t.string :comment, limit: 2000
      t.boolean :disable, default: false
      t.timestamps null: false
    end
  end
end
