class CreateBusinesses < ActiveRecord::Migration[5.2]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :location
      t.integer :phone
    end
  end
end
