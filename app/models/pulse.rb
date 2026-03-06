class Pulse < ApplicationRecord
  belongs_to :user
  # has_one :status_page
  validates :url, :pulse_type, :pulse_interval, presence: true
end
