class AddDefaultValueToCountDays < ActiveRecord::Migration[6.1]
  def change
    change_column :issue_books, :count_days, :integer, default: 7
  end
end
