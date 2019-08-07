Rails.application.routes.draw do
  namespace :api do
    get "/reddit_programming" => "pages#reddit_programming"
    get "/newsapi_headlines" => "pages#newsapi_headlines"
  end
end
