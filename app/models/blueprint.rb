class Blueprint < ApplicationRecord
  belongs_to :user

	validates :title, presence: true, length: { minimum: 3 }
  validates :fabric_type, presence: true
end
