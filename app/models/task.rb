class Task < ApplicationRecord
  belongs_to :user
  validates :desc, length: { maximum: 250 },
                            presence: true
end
