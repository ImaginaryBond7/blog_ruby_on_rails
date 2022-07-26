Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get "/movies", to: "movies#getAllMovies"
  post "/movies", to: "movies#createMovies"


  get "/users", to: "users#showUsers"
  get "/users/:userid", to: "userindex#index"


  get "/todos", to:"todos#getAllTodos"
  post "/todos", to:"todos#createTodos"
  delete "/todos/:id", to:"todos#deleteTodos"
  put "/todos/:id", to:"todos#updateTodos"
  # Defines the root path route ("/")
  # root "articles#index"
end
