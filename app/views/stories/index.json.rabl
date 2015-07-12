collection @stories
attributes :id, :title, :content
child(:user) { attributes :name }