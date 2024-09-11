Rails.application.routes.draw do

  #get "up" => "rails/health#show", as: :rails_health_check

  root 'home#index'


  resources :products do
    resources :stocks do
      member do
        get 'statistic'
      end
    end
  end
end
