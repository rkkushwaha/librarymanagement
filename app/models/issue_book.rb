class IssueBook < ApplicationRecord
  belongs_to :student
  belongs_to :book

  scope :pending, -> { where(status: 'Pending') }
end


