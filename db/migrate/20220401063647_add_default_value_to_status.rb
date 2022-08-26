class AddDefaultValueToStatus < ActiveRecord::Migration[6.1]
  def change
    change_column :issue_books, :status, :string, default: "Pending"
  end
end
