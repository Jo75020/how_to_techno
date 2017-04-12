class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @info  = Info.new
    @infos = Info.all
  end


end
