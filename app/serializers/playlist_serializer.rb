class PlaylistSerializer < ActiveModel::Serializer
    attributes :id, :name, :description, :episode_ids

    has_many :playlist_episodes


end

