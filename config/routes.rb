Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Read home page / index
  get "tasks", to: "tasks#index", as: :tasks

  # Create new task - takes you to form
  get "tasks/new", to: "tasks#new", as: :new_task

  # Read individal task
  get "tasks/:id", to: "tasks#show", as: :task

  # Post task - submit form and save params to database
  post "tasks", to: "tasks#create"

  # Update task - step 1 - get the form
  get "tasks/:id/edit", to: "tasks#edit"
  # Update task - step 2 - update the task instance
  patch "tasks/:id", to: "tasks#update"
end
