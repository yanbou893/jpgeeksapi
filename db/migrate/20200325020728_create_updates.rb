class CreateUpdates < ActiveRecord::Migration[6.0]
  def change
    create_table :updates do |t|
      t.integer :app_id
      t.string :body

      t.timestamps
    end
  end
end
