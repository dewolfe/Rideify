class AddTotalSeatsToCar < ActiveRecord::Migration
  def change
    add_column :cars, :total_seats, :integer
  end
end
