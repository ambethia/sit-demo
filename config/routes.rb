Rails.application.routes.draw do
  resources :events, only: [:show]

end
