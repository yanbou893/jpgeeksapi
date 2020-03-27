class AddColumnApps < ActiveRecord::Migration[6.0]
  def change
    add_column :apps, :body, :string
    add_column :apps, :release, :date
  end
end
