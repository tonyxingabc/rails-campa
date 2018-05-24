class CreateVans < ActiveRecord::Migration[5.2]
  def change
    create_table :vans do |t|
      t.references :user, foreign_key: true
      t.text :description
      t.integer :cost_per_night
      t.integer :max_guest
      t.string :transmission_type
      t.boolean :toilet
      t.integer :beds
      t.timestamps
    end
  end
end
