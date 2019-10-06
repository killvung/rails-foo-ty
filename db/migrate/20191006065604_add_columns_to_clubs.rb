class AddColumnsToClubs < ActiveRecord::Migration[6.0]
  def change
    add_column :clubs, :nickname, :string
    add_column :clubs, :home_venue, :string
    add_column :clubs, :state, :string
    add_column :clubs, :establish, :integer
    add_column :clubs, :club_url, :string
    add_column :clubs, :members, :bigint
  end
end
