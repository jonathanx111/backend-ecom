Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do 
    namespace :v1 do 
      resources :users
    end
  end

  namespace :api do 
    namespace :v1 do 
      resources :instruments
    end
  end

   namespace :api do 
    namespace :v1 do 
      resources :listings
    end
  end
  
end
