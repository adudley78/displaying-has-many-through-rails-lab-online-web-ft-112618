class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.references :doctor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
