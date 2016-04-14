class Task < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :list
  scope :incomplete, -> {where("completed = 'f'")}
end
