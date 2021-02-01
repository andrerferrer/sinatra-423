class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    # write the code of the migration
    create_table :restaurants do |table|
      table.string :name
      table.string :address
      table.timestamps
    end
  end
end
