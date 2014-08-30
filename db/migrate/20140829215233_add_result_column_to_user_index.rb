class AddResultColumnToUserIndex < ActiveRecord::Migration
  def change
  	add_column :users, :result, :string
  end
end
