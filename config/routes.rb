Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/jobs" => "jobs#index"
  get "/jobs/:id" => "jobs#show"
  post "/jobs" => "jobs#create"
  patch "/jobs/:id" => "jobs#update"
  delete "/jobs/:id" => "jobs#destroy"
end
