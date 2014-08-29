class CreateAuths < ActiveRecord::Migration
  def change
    create_table :auths do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :oauth_token
      t.datetime :oauth_expires_at
      t.json :info

      t.timestamps
    end
  end
end