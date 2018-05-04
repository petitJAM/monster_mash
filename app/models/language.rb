class Language < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  scope :ordered, -> { order(:name) }
end
