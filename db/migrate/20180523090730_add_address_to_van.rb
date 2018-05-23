class AddAddressToVan < ActiveRecord::Migration[5.2]
  def change
    add_column :vans, :address, :string
  end
end
