Rails.application.routes.draw do
  resources :ultrasonic_readings
  resources :parking_locations do
    resources :parking_spots
  end
  resources :parking_spots
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
