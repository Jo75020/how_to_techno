class InfosController < ApplicationController
skip_before_action :authenticate_user!
def create
  @info = Info.new(info_params)
  if @info.save
  flash.now[:notice] = 'Message sent!'
else
  flash.now[:alert] = 'Error while sending message!'
end
  redirect_to root_path

end

def update
  @info = Info.new(info_params)
  if @info.save
  flash.now[:notice] = 'Message sent!'
else
  flash.now[:alert] = 'Error while sending message!'
end
  redirect_to root_path
end

def index
  @infos = Info.all
end


private

    def set_info
      @info = info.find(params[:id])
    end

  def info_params
    params.require(:info).permit(:first_name, :last_name, :email, :phone, :city, :birthday, :description, :motivation)
  end
end
