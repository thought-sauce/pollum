class PollutionController < ApplicationController
  def station
    @station = params[:station] || :Central
  end
  
  def compare
    @metric = params[:metric] || :fsp
  end

  def awake
  end
end