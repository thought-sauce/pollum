class PollutionController < ApplicationController
  def index
    @station = params[:station] || :Central
  end
  
  def compare
    @metric = params[:metric] || :fsp
  end
end