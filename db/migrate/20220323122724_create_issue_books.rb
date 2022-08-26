class CreateIssueBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :issue_books do |t|
      t.date :start_date
      t.date :return_date
      t.string :status
      t.references :student, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true

      t.timestamps
    end
  end
end
