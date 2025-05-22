class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :todos, dependent: :destroy
  has_many :todo_lists, dependent: :destroy

  validates :name, presence: true

  def initials
    name.split.map(&:first).join.upcase if name.present?
  end

  # Create a default todo list for new users
  after_create :create_default_todo_list

  private

  def create_default_todo_list
    todo_lists.create(name: "My Todo List")
  end
end
