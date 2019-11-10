class Event < ApplicationRecord
  belongs_to :user
  has_one :company, through: :user
  validates_presence_of :name, :due_at, :action

end
