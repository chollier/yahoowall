class CreatePlayersWalls < ActiveRecord::Migration
  def self.up
    create_table :players_walls do |t|
      t.integer :player_id
      t.integer :wall_id
      t.timestamps
    end
  end

  def self.down
    drop_table :players_walls
  end
end
