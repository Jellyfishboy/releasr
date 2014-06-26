class AddDraftBooleanToRelease < ActiveRecord::Migration
  def change
    add_column :releases, :draft, :boolean, default: true
  end
end
