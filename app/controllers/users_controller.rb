class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    redirect_to root_path
  end

  def index
    @user = current_user
  end
  private

    def set_user
      @user = User.find(params[:id])
    end

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
