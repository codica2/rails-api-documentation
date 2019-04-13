Rails.application.routes.draw do

  apipie unless Rails.env.production? 
  
  namespace :api do
    namespace :v1 do
      resources :authors
      resources :books
    end
  end

end
