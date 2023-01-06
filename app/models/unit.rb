class Unit < ApplicationRecord
  belongs_to :property

  validates :units, presence: true, allow_blank: false,
                    inclusion: { in: %w(kitchen bathroom bedroom living-room) }
end
