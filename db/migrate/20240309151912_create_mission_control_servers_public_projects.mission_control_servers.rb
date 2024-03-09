# This migration comes from mission_control_servers (originally 20240211235451)
class CreateMissionControlServersPublicProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :mission_control_servers_public_projects do |t|
      t.belongs_to :project, null: false, foreign_key: {to_table: :mission_control_servers_projects}
      t.string :name
      t.string :token

      t.timestamps
    end
    add_index :mission_control_servers_public_projects, :token, unique: true
  end
end
