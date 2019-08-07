class Api::PagesController < ApplicationController
  def reddit_programming
    response = HTTP.get("https://www.reddit.com/r/programming/.json")
    render json: response.parse
  end

  def newsapi_headlines
    response = HTTP.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=#{ENV["NEWSAPI_KEY"]}")
    render json: response.parse
  end
end
