class AddVoteCacheToThemes < ActiveRecord::Migration[5.1]
  def change
    change_table :themes do |t|
      t.integer :cached_scoped_round_votes_total, default: 0
      t.integer :cached_scoped_round_votes_score, default: 0
      t.integer :cached_scoped_round_votes_up, default: 0
      t.integer :cached_scoped_round_votes_down, default: 0
      t.integer :cached_weighted_round_score, default: 0
      t.integer :cached_weighted_round_total, default: 0
      t.float :cached_weighted_round_average, default: 0.0
    end
  end
end
