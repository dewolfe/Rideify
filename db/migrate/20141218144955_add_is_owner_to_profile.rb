class AddIsOwnerToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :is_owner, :boolean
  end
end
