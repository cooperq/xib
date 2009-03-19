class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name, :null => false
      t.string :email, :null => false
      t.string :password, :null => false
      t.binary :avatar

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
