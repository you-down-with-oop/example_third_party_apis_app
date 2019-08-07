Rails.application.routes.draw do
  namespace :api do
    get "/reddit_programming" => "pages#reddit_programming"
    get "/newsapi_headlines" => "pages#newsapi_headlines"
    post "/spotify_authorize" => "pages#spotify_authorize"
    get "/spotify_search" => "pages#spotify_search"
  end
end
