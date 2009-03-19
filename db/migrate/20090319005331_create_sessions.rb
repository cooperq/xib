class CreateSessions < ActiveRecord::Migration
  def self.up
    create_table :sessions do |t|
      t.integer :user_id, :null => false
      t.integer :project_id, :null => false
      t.float :rate
      t.float :hours, :null => false, :default => 0
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :sessions
  end
end
