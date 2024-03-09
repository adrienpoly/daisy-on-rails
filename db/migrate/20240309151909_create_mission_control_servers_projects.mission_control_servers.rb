# This migration comes from mission_control_servers (originally 20240205020304)
class CreateMissionControlServersProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :mission_control_servers_projects do |t|
      t.string :title
      t.string :token, index: { unique: true }

      t.timestamps
    end
  end
end
