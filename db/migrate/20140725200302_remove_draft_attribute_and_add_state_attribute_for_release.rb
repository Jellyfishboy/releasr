class RemoveDraftAttributeAndAddStateAttributeForRelease < ActiveRecord::Migration
  def up
    remove_column :releases, :draft, :string
    add_column :releases, :state, :integer, default: 0
  end

  def down
    remove_column :releases, :state, :integer, default: 0
    add_column :releases, :draft, :string
  end
end
