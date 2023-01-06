class Property < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :units, presence: true, allow_blank: false,
                    inclusion: { in: %w(kitchen bathroom bedroom living-room) }
end
