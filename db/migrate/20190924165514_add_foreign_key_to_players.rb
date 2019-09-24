class AddForeignKeyToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_reference :players, :club, foreign_key: true
  end
end
