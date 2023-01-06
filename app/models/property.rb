class Property < ApplicationRecord
  has_many :units
  accepts_nested_attributes_for :units, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true, uniqueness: true
end
