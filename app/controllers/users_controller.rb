class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  before_action :get_user, only: [:edit, :show, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to opportunities_path
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def update
    if @user.update_attributes(user_params)
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private
  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
