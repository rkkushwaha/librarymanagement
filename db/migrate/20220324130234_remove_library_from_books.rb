class RemoveLibraryFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_reference :books, :library, null: false, foreign_key: true
  end
end
