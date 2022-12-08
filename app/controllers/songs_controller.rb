class SongsController < ApplicationController
  def index
    songs = Song.all
    render json: songs.as_json
  end

  def show
    song = Song.find_by(id: params[:id])
    render json: song.as_json
  end

  def create
    
  end

  def update
    song = Song.find_by(id: params[:id])
    song.title = params[:title] || song.title
    song.album = params[:album] || song.album
    song.artist = params[:artist] || song.arist
    song.year = params[:year] || song.year
    render json: {message: "hello from update"}
  end

end


# get "/songs" => "songs#index"
# get "/songs/:id" => "songs#show"
# patch "songs/:id" => "songs#update"
# delete "/songs/:id" => "songs#destroy"
# post "/songs" => "songs#create"