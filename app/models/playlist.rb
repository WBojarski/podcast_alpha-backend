class Playlist < ApplicationRecord
  belongs_to :user

  has_many :playlist_episodes

  def episode_ids
    self.playlist_episodes.map { |pl| pl.episode_id }
  end
end
