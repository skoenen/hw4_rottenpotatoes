Rottenpotatoes::Application.routes.draw do

  root to: "movies#index"

  match 'movies/similar_to/:movie'  => 'movies#similar_to'

  resources :movies

end
