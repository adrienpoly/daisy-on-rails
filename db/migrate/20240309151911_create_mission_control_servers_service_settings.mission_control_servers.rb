# This migration comes from mission_control_servers (originally 20240211190130)
class CreateMissionControlServersServiceSettings < ActiveRecord::Migration[7.1]
  def change
    create_table :mission_control_servers_service_settings do |t|
      t.belongs_to :project, null: false, foreign_key: {to_table: :mission_control_servers_projects}
      t.string :hostname
      t.string :label

      t.timestamps
    end
  end
end
