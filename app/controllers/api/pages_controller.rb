class Api::PagesController < ApplicationController
  def reddit_programming
    response = HTTP.get("https://www.reddit.com/r/programming/.json")
    render json: response.parse
  end
end
