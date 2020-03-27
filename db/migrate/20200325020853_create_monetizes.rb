class CreateMonetizes < ActiveRecord::Migration[6.0]
  def change
    create_table :monetizes do |t|
      t.integer :app_id
      t.date :date
      t.integer :money

      t.timestamps
    end
  end
end
