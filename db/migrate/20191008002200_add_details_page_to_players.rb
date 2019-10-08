class AddDetailsPageToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :games, :integer
    add_column :players, :goal, :integer
    add_column :players, :fantasy_points_total, :integer
  end
end
