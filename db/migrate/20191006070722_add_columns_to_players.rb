class AddColumnsToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :level, :string
    add_column :players, :avatar_small, :binary
  end
end
