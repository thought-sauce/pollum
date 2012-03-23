class PollutionController < ApplicationController
  def station
    @station = params[:station] || :Central
  end
  
  def compare
    @metric = params[:metric].try(:to_sym) || :fsp
    @plot_lines = Reading.plot_lines(@metric)
  end

  def awake
  end
end