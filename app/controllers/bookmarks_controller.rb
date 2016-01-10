class BookmarksController < ApplicationController
  before_action :get_event, only: [:create]

  def new
  end

  def create
  	@bookmark = @event.bookmarks.build
    @bookmark.user = current_user
    if @bookmark.save
      redirect_to event_path(@event), notice: "bookmark successfully made!"
    else
      flash[:alert] = "Volunteering bookmark failed to save. Note: Can only bookmark an event once."
      redirect_to event_path(@event)
    end
  end

  def show
  end

  def edit
  end

  def update
    

  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.destroy
      redirect_to user_path(current_user), notice: "bookmark deleted"
    else
      redirect_to user_path(current_user)
      flash[:alert] = "Deleting this bookmark failed"
    end
  end

  private

  def get_event
    @event = Event.find(params[:event_id])
  end
end