class UsersController < ApplicationController
  def portal
  end

  def profile
    @user = current_user
  end

  def index
    @users = User.all
  end


  def create
    @user = User.new(user_params)
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def user_params
    params.require(:user).permit(:avatar)
  end


end
