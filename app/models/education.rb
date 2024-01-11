class Education < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :degree, presence: true
  validates :field, presence: true
  validates :location, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
