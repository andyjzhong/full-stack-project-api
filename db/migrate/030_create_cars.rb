class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      # Adds a user_id column to the cars table.
      # t.references :user, null: false
      t.string :make
      t.string :model
      t.integer :year
      t.string :color

      t.timestamps
    end
  end
end
