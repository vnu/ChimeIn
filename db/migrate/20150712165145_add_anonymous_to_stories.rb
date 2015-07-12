class AddAnonymousToStories < ActiveRecord::Migration
  def change
    add_column :stories, :anonymous, :boolean, default: false
    add_column :stories, :looking_for, :string, default: 'advice' #advice, report
  end
end
