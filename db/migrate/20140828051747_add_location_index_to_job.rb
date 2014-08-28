class AddLocationIndexToJob < ActiveRecord::Migration
  def change
  	add_column :jobs, :location, :string
  end
end
