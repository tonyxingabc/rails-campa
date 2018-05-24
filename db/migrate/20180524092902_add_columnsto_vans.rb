class AddColumnstoVans < ActiveRecord::Migration[5.2]
  def change
    add_column :vans, :photo, :string
    add_column :vans, :title, :string
    change_column :vans, :description, :text
  end
end
