Pollum::Application.routes.draw do
  root :to => 'pollution#compare'
  get 'pollution' => 'pollution#station', as: :pollution
  get 'pollution/:station' => 'pollution#station', as: :pollution_station
  get 'compare_pollution' => 'pollution#compare', as: :compare
  get 'compare_pollution/:metric' => 'pollution#compare', as: :compare_metric
  get 'awake' => 'pollution#awake'
end
