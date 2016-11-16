class CreateBlueprints < ActiveRecord::Migration[5.0]
  def change
    create_table :blueprints do |t|
      t.string :title
      t.string :fabric_type
      t.decimal :fabric_length
      t.text :instructions
      t.text :additional_comments

      t.timestamps
    end
  end
end
