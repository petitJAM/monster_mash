Rails.application.routes.draw do
  resources :monsters

  resources :languages, only: [:index, :create] do
    collection do
      get :autocomplete
    end
  end

  root to: 'monsters#index'
end
