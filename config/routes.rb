Rails.application.routes.draw do
  devise_for :users
  root "welcome#index"

  resources :users , only:[:index] do
    resources :categories, only: [:index, :new, :destroy, :create, :show]  do
    resources :transferces,only: [:index, :new, :destroy, :create, :show]
  end
end

end
