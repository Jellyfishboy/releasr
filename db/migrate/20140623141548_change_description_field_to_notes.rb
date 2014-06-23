class ChangeDescriptionFieldToNotes < ActiveRecord::Migration
  def change
    rename_column :releases, :description, :notes
  end
end
