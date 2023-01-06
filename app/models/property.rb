class Property < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :units, presence: true, allow_blank: false, inclusion: { in: %w[kitchen bathroom bedroom living-room],
                    message: 'Please use one of the provided options for this property'}
  serialize :units, ::Array

end
