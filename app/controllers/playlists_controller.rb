class PlaylistsController < ApplicationController

    def index
        playlists = Playlist.all

        render json: playlists
    end

    def new

    end

    def create
        playlist = Playlist.create(playlist_params)
        
        render json: playlist
    end

    def show
        playlist = Playlist.find_by(id: params[:id])

        render json: playlist
    end


    private

    def playlist_params
        params.require(:playlist).permit(:name, :description, :user_id)
    end
end
