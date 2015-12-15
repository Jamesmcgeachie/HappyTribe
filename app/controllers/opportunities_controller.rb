class OpportunitiesController < ApplicationController
  skip_before_action :require_login, only: [:index, :show]
  before_action :get_opportunity, only: [:show, :edit, :update, :destroy]

  def index
    @opportunities = Opportunity.all
  end

  def show
    @arrangement = @opportunity.arrangements.build
  end

  # the methods below show will only become relevant once we have a user/organization able to
  # create opportunities

  def new
    @opportunity = Opportunity.new
  end

  def create
    @opportunity = Opportunity.new(opportunity_params)
    @opportunity.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def opportunity_params
    params.require(:opportunity).permit(:name, :start_time, :end_time, :max_capacity, :location, :description)
  end


  def get_opportunity
    @opportunity = Opportunity.find(params[:id])
  end

end
