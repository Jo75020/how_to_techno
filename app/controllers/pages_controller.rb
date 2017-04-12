class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
    @info  = Info.new
  end

  def programme
  end


end
