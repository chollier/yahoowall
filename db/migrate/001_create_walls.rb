class CreateWalls < ActiveRecord::Migration
  def self.up
    create_table :walls do |t|
      t.string :nom
      t.string :description
      t.integer :colonnes
      t.integer :lignes
      t.integer :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :walls
  end
end
