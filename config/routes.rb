Rails.application.routes.draw do
  # get "articles/index"
  # get "articles/new"
  # get "articles/show"
  # get "articles/edit"
  # get "articles/delete"
  # Set the root path to the articles index page
  root "articles#index"

  # Generates all standard RESTful routes for articles
  resources :articles do 
    resources :comments, only: [:new, :create]
  end
end


