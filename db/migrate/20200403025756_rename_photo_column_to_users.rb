class RenamePhotoColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :photo, :photoURL
  end
end
