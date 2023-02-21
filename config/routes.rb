Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  delete "tasks/:id", to: "tasks#destroy"

  patch "tasks/:id", to: "tasks#update"
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task

  post "tasks", to: "tasks#create"
  get "tasks/new", to: "tasks#new"

  get "tasks/:id", to: "tasks#show", as: :task
  get "tasks", to: "tasks#index"
  # Defines the root path route ("/")
  # root "articles#index"
end
