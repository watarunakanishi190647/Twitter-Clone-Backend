Rails.application.routes.draw do
  
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: '/graphql'
  end
  
  
  # root "graphql#execute"
  # post "still-ravine-42221.herokuapp.com", to: "graphql#execute"
  # get "/graphql", to: "graphql#execute"

  post "/graphql", to: "graphql#execute"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
