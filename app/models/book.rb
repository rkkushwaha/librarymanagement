class Book < ApplicationRecord
  has_many :issue_books
  has_many :students, through: :issue_books
end
