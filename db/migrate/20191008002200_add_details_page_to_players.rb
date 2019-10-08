class AddDetailsPageToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :games, :integer
    add_column :players, :goals, :integer
    add_column :players, :fantasy_points_total, :integer
    add_column :players, :debut, :integer
  end
end
