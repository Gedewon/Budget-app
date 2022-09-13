Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"


  resources :users , only:[:index] do
    resource :categorie, only: [:index, :new, :destroy, :create, :show]  do
    resource :transferce,only: [:index, :new, :destroy, :create, :show]
  end
end

end
