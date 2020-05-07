class PlaylistEpisodesController < ApplicationController


    def index
        playlist_episodes = PlaylistEpisodes.all

        render json: playlist_episodes
    end

    def new

    end

    def create
        playlist_episode = PlaylistEpisode.create(playlist_episode_params)

        render json: playlist_episode
    end

    def show
        playlist_episode = PlaylistEpisode.find_by(id: params[:id])

        render json: playlist_episode
    end

    def destroy
        
        playlist_episode = PlaylistEpisode.find_by(episode_id: params[:episode_id], playlist_id: params[:playlist_id])
        playlist_episode.delete
        
        render json: playlist_episode
    end

    private

    def playlist_episode_params
        params.require(:playlist_episode).permit(:episode_id, :playlist_id)
    end
end
