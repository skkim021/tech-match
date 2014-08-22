class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :description
      t.string :salary

      t.timestamps
    end
  end
end
