class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.column :name, :string

      t.timestamps
    end
    create_table :sightings do |t|
      t.column :species_id, :integer
      t.column :date, :date
      t.column :time, :time
      t.column :locaton, :string
      t.column :region_id, :integer
      t.timestamps
    end
  end
end
