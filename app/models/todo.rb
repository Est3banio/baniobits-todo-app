class Todo < ApplicationRecord
  belongs_to :user
  belongs_to :todo_list, optional: true
  has_and_belongs_to_many :categories
  
  validates :title, presence: true
  
  scope :by_user, ->(user) { where(user: user) }
  
  # Order todos by most recently created first
  default_scope { order(created_at: :desc) }
end
