class SongsController < ApplicationController
def index
  songs = Song.all
  render json: songs.as_json
end

def show
  song = Song.find_by(id: params[:id])
  render json: song.as_json
end


end


# get "/songs" => "songs#index"
# get "/songs/:id" => "songs#show"
# patch "songs/:id" => "songs#update"
# delete "/songs/:id" => "songs#destroy"