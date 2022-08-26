class AddDaysCountToIssueBook < ActiveRecord::Migration[6.1]
  def change
    add_column :issue_books, :days_count, :date
  end
end
