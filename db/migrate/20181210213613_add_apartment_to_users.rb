class AddApartmentToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :apt, :string
  end
end
