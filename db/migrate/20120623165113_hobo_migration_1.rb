class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :timelines do |t|
      t.string   :name
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :timelines
  end
end
