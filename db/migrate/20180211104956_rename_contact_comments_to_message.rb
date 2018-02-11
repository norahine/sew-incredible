class RenameContactCommentsToMessage < ActiveRecord::Migration[5.0]
  def change
    rename_column(:contacts, :comments, :message)
  end
end
