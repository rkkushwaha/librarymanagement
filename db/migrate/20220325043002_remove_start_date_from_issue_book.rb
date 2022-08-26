class RemoveStartDateFromIssueBook < ActiveRecord::Migration[6.1]
  def change
    remove_column :issue_books, :start_date, :date
    remove_column :issue_books, :end_date, :date
    remove_column :issue_books, :return_date, :date
  end
end
