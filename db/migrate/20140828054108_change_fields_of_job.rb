class ChangeFieldsOfJob < ActiveRecord::Migration
  def change
  	rename_column :jobs, :search, :title
  	rename_column :jobs, :location, :state
  	add_column :jobs, :zip, :string
  end
end
