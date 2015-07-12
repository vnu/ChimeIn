class Story < ActiveRecord::Base
  belongs_to :user
  belongs_to :organization
  has_many :story_links
  has_many :comments
end
