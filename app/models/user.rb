class User < ApplicationRecord

  has_many :playlists
  has_many :playlist_episodes, through: :playlist
  has_secure_password
end
