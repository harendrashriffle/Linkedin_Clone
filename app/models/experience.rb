class Experience < ApplicationRecord
  belongs_to :user

  validates :company_name, presence: true
  validates :designation, presence: true
  validates :location, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
