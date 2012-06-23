class HoboMigration2 < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string   :name
      t.text     :description
      t.datetime :start
      t.datetime :finish
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :events
  end
end
