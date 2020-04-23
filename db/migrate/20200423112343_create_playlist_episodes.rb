class CreatePlaylistEpisodes < ActiveRecord::Migration[6.0]
  def change
    create_table :playlist_episodes do |t|
      t.string :episode_id
      t.references :playlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
