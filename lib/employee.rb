class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  # Employees have a hourly_rate that is a number (integer) between 40 and 200
  validates :hourly_rate, numericality: {only_integer: true, in: 40..200}
  validates :store_id, presence: true

end
