Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'index', to: 'tasks#index'
  get 'tasks/new', to: 'tasks#new' # The `new` route needs to be *before* `show` route.
  post 'tasks', to: 'tasks#create'
  get 'tasks/:id', to: 'tasks#show', as: :task
end
