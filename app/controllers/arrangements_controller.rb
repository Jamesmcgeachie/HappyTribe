class ArrangementsController < ApplicationController

  before_action :get_timeslot

  def new
  end

  def create
    @arrangement = @timeslot.arrangements.build
    @arrangement.user = current_user
    if @arrangement.save
      redirect_to event_path(@timeslot.event), notice: "Arrangement successfully made!"
    else
      flash[:alert] = "Volunteering arrangement failed to save."
      render event_path(@timeslot.event)
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def get_timeslot
    @timeslot = Timeslot.find(params[:timeslot_id])
  end

end
