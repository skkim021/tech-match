class AddTestResultFieldToTestIndex < ActiveRecord::Migration
  def change
  	add_column :tests, :result, :string
  end
end
