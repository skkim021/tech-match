class AddSearchIndexToJob < ActiveRecord::Migration
  def change
  	add_column :jobs, :search, :string
  end
end
