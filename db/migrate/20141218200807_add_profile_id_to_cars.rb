class AddProfileIdToCars < ActiveRecord::Migration
  def change
    add_column :cars, :profile_id, :integer
  end
end
