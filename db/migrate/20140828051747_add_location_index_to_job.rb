class AddLocationIndexToJob < ActiveRecord::Migration
  def change
  	add_column :jobs, :title, :string
  	add_column :jobs, :state, :string
  	add_column :jobs, :zip, :string
  end
end
