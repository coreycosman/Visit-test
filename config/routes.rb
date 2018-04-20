Rails.application.routes.draw do
  root 'csvs#index'
  resources :csvs, only: %i[index create]
end
