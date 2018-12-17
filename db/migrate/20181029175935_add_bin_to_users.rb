class AddBinToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :bin, :string
  end
end
