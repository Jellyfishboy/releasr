class ChangeReleaseDateFieldName < ActiveRecord::Migration
  def change
    rename_column :releases, :release_date, :date
  end
end
