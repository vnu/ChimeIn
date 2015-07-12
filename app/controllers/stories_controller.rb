class StoriesController < ApplicationController
  # before_action :authenticate_user!
  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.create(story_params)
    @story.update(user_id: current_user.id)
    redirect_to :stories
  end

  private

  def story_params
    params.require(:story).permit(:title, :content, :anonymous, :looking_for)
  end

end
