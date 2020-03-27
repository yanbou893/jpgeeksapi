class CreateApps < ActiveRecord::Migration[6.0]
  def change
    create_table :apps do |t|
      t.integer :user_id
      t.string :title
      t.string :semititle
      t.string :url
      t.string :icon
      t.string :twitter
      t.string :bisinessmodel
      t.string :platform

      t.timestamps
    end
  end
end
