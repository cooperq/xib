class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name, :null => false
      t.text :description
      t.integer :default_rate, :null => false, :precision => 6, :scale => 2
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
