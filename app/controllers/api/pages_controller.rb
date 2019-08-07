class Api::PagesController < ApplicationController
  def reddit_programming
    response = HTTP.get("https://www.reddit.com/r/programming/.json")
    render json: response.parse
  end

  def newsapi_headlines
    response = HTTP.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=#{ENV["NEWSAPI_KEY"]}")
    render json: response.parse
  end

  def spotify_authorize
    response = HTTP.post(
      "https://accounts.spotify.com/api/token",
      form: {
        grant_type: "authorization_code",
        code: params[:code],
        redirect_uri: "http://localhost:8080",
        client_id: ENV["SPOTIFY_CLIENT_ID"],
        client_secret: ENV["SPOTIFY_CLIENT_SECRET"],
      },
    )
    render json: response.parse
  end
end
