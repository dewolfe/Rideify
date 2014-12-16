class AddStartEndDestinationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :start_address, :string
    add_column :users, :end_address, :string
  end
end
