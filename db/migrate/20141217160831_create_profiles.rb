class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :start_address
      t.string :destination_address
      t.boolean :have_car

      t.timestamps null: false
    end
  end
end
