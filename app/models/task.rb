class Task < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :list

  def self.incomplete
    Task.where("completed = 'f'")
  end
end
