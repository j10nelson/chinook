class AddRankingToTracks < ActiveRecord::Migration[5.0]
  def change
    add_column(:tracks, :ranking, :integer)
  end
end
