Rails.application.routes.draw do
  # get 'todos/new'
  #get '/todos', to: 'todos#index'
  # get '/todos/:id', to: 'todos#show', as: 'todo_show'
  # post '/todos', to: 'todos#create'
  # get '/todos/:id/edit', to: 'todos#edit', as: 'todo_edit'
  root 'todos#index'
  get '/todos/:id/complete', to: 'todos#complete', as: 'complete'
  get '/todos/list'
  resources :todos

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
