class HoboMigration4 < ActiveRecord::Migration
  def self.up
    add_column :events, :timeline_id, :integer

    add_index :events, [:timeline_id]
  end

  def self.down
    remove_column :events, :timeline_id

    remove_index :events, :name => :index_events_on_timeline_id rescue ActiveRecord::StatementInvalid
  end
end
