class Task < ApplicationRecord

  # associations
  belongs_to :member
  belongs_to :user

  # validations
  validates :task, presence: true,
                   length: { minimum: 3 }
  validates :task, uniqueness: true
  validates :due_date, presence: true

  # scopes                
  scope :completed, -> {where(:completed => true)}
  scope :todo, -> { where(:completed => false)}

  # object methods
  def task_status
    completed ? 'Complete' : 'Incomplete'
  end

  def assigned_to
    member.name.capitalize
  end
end
