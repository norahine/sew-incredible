class MakeColumnsNonNull < ActiveRecord::Migration[5.0]
  def up
    change_column :blueprints, :title, :string, null: false
    change_column :blueprints, :fabric_type, :string, null: false
    change_column :contacts, :name, :string, null: false
    change_column :contacts, :email, :string, null: false
    change_column :contacts, :message, :text, null: false
  end

  def down
    change_column :blueprints, :title, :string, null: true
    change_column :blueprints, :fabric_type, :string, null: true
    change_column :contacts, :name, :string, null: true
    change_column :contacts, :email, :string, null: true
    change_column :contacts, :message, :text, null: true
  end
end
