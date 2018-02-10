class AddUserIdToBlueprints < ActiveRecord::Migration[5.0]
  def change
    add_column :blueprints, :user_id, :integer, null: false
    add_foreign_key :blueprints, :users
  end
end
