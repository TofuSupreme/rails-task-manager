Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  # get the list of tasks
  get "/tasks/", to: "tasks#index"
  # view details of a task

  get "/task/:id", to: "tasks#show", as: :task

  # add a new task
  get "/tasks/new", to: "tasks#new", as: :new_task
  post "/tasks", to: "tasks#create"

  #edit a task
  get "/tasks/:id/edit", to:"tasks#edit", as: :edit_task
  patch "/task/:id", to:"tasks#update"

  #remove a task
  delete "/task/:id", to: "tasks#destroy", as: :delete_task
end
