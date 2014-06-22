class AddProjectIdToReleases < ActiveRecord::Migration
  def change
    add_column :releases, :project_id, :integer
  end
end
