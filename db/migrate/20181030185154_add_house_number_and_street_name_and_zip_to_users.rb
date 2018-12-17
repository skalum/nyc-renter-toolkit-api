class AddHouseNumberAndStreetNameAndZipToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :houseNumber, :string
    add_column :users, :street, :string
    add_column :users, :zip, :string
  end
end
