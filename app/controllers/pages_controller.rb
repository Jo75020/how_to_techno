class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = User.new

  end

private

    def set_user
      @user = User.find(params[:id])
    end

  def user_params
    params.require(:user).permit(:first_name, :last_name)
  end
end
