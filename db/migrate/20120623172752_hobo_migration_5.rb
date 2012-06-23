class HoboMigration5 < ActiveRecord::Migration
  def self.up
    remove_index :events, :name => :index_events_on_timeline_id rescue ActiveRecord::StatementInvalid
  end

  def self.down
    add_index :events, [:timeline_id]
  end
end
