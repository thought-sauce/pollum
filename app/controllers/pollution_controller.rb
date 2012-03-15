class PollutionController < ApplicationController
  def index
    @station = params[:station] || :Central
  end
  
  def compare
    @metric = params[:metric] || :fsp
  end

  def awake
  end
end