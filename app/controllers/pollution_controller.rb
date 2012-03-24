class PollutionController < ApplicationController
  def station
    expires_in 1.hour, :public => true
    @station = params[:station] || :Central
  end
  
  def compare
    expires_in 1.hour, :public => true
    @metric = params[:metric].try(:to_sym) || :fsp
    @plot_lines = Reading.plot_lines(@metric)
  end

  def awake
  end
end