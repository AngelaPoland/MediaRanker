class UsersController < ApplicationController

  before_action :find_user, only: [:edit, :update, :destroy]


  def index
    @users = User.all
  end

  def new

  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def create

  end


  private

  def user_params
    return params.require(:work).permit(:user_name)
  end

end
