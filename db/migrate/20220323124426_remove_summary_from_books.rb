class RemoveSummaryFromBooks < ActiveRecord::Migration[6.1]
  def change
    remove_column :books, :summary, :text
  end
end
