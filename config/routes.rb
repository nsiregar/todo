Rails.application.routes.draw do
  get  '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  resources :users

  resources :tasks do
    resources :task_items do
      member do
        patch :complete
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tasks#index'
end
