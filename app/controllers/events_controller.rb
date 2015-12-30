class EventsController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  before_action :get_event, only: [:show, :edit, :update, :destroy]

  def new
    @organization = Organization.find(params[:organization_id])
    @event = @organization.events.build
  end

  def create
    @organization = Organization.find(params[:organization_id])
    @event = @organization.events.build(event_params)
    if @event.save
      redirect_to event_path(@event), notice: "Successfully created a new event!"
    else
      flash[:alert] = "Sorry, your event could not be created"
      render :new
    end
  end

  def index
    if params[:q] == nil
      if params[:filter]
        case params[:filter]
        when "Event Start Time (Soonest first)"
          @events = Event.order_by_start_time
        when "Match my Interests"
          @events = Event.filter_for_user(current_user, 1, 0)
        when "Match my Skills"
          @events = Event.filter_for_user(current_user, 0, 1)
        when "Match my Interests AND Skills"
          @events = Event.filter_for_user(current_user, 0.6, 0.4)
        end
      else
        @events = Event.order_by_start_time
      end
    else
      @events = @q.result.includes(:interests, :skills).uniq
    end
  end

  def show
    @bookmark = @event.bookmarks.build
  end

  # the methods below show will only become relevant once we have a user/organization able to
  # create events

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def event_params
    params.require(:event).permit(:name, :location, :description, :image_url, :role, timeslots_attributes: [:id, :start_time, :end_time, :capacity, :_destroy])
  end

  def get_event
    @event = Event.find(params[:id])
  end

end
