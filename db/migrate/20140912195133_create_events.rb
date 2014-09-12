class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :ap_mac
      t.string :client_mac
      t.boolean :is_associated
      t.integer :rssi
      t.integer :rssi_db
      t.datetime :last_seen

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
