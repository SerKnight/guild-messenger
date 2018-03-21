class Classroom < ApplicationRecord
  include ApplicationHelper
  has_many :messages

  belongs_to :user
  has_many :memberships
  has_many :users, through: :memberships 

  validates :name, presence: true
  validates :description, presence: true
end
