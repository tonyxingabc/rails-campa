class AddLocationToVan < ActiveRecord::Migration[5.2]
  def change
    add_column :vans, :location, :string
  end
end
