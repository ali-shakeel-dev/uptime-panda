class Pulse < ApplicationRecord
  belongs_to :user
  # has_one :status_page
  validates :url, :pulse_type, :pulse_interval, presence: true

  scope :status_pages, -> {where(status_page: true)}
  scope :monitors, -> {Pulse.all}
end
