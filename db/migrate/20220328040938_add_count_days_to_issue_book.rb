class AddCountDaysToIssueBook < ActiveRecord::Migration[6.1]
  def change
    add_column :issue_books, :count_days, :integer
  end
end
