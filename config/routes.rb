Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get the list of tasks
  get "/tasks/", to: "tasks#index"
  # view details of a task
  get "/task/:id", to: "tasks#show", as: :task
  # add a new task
  root to: "tasks#index"

  #edit a task

  #remove a task
end
