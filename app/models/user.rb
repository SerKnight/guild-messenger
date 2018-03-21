class User < ApplicationRecord  
  has_many :messages
  has_many :memberships
  has_many :classrooms
  has_many :classrooms, through: :memberships

  validates :name, :uniqueness => {:case_sensitive => false}
  validates :email, presence: true, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def can_delete?(classroom)
    self == classroom.user
  end
end
