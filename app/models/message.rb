class Message < ApplicationRecord
  include ApplicationHelper
  belongs_to :user
  belongs_to :classroom

  validates :content, presence: true
  validates :user_id, presence: true
  validates :classroom_id, presence: true

  scope :recent, -> { order(:created_at).last(50) }
end
