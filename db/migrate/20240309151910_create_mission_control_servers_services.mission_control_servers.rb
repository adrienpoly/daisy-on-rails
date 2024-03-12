# This migration comes from mission_control_servers (originally 20240205031009)
class CreateMissionControlServersServices < ActiveRecord::Migration[7.1]
  def change
    create_table :mission_control_servers_services do |t|
      t.belongs_to :project, null: false, foreign_key: {to_table: :mission_control_servers_projects}
      t.string :hostname, index: true, null: false
      t.decimal :cpu, precision: 8, scale: 2
      t.decimal :mem_used, precision: 8, scale: 2
      t.decimal :mem_free, precision: 8, scale: 2
      t.string :disk_free

      t.timestamps
    end
  end
end
