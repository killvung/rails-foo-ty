class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.date :date_of_birth
      t.float :height
      t.float :weight
      t.binary :avatar

      t.timestamps
    end
  end
end
