class HoboMigration3 < ActiveRecord::Migration
  def self.up
    create_table :event_assignments do |t|
      t.datetime :created_at
      t.datetime :updated_at
    end

    add_column :timelines, :user_id, :integer

    add_index :timelines, [:user_id]
  end

  def self.down
    remove_column :timelines, :user_id

    drop_table :event_assignments

    remove_index :timelines, :name => :index_timelines_on_user_id rescue ActiveRecord::StatementInvalid
  end
end
