class Member < ApplicationRecord
  # associations
  belongs_to :user
  has_many :tasks, dependent: :destroy

  # validation
  validates :name, presence: true, uniqueness: true
end
