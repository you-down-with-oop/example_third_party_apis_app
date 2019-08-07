Rails.application.routes.draw do
  namespace :api do
    get "/reddit_programming" => "pages#reddit_programming"
  end
end
