class User < ApplicationRecord
  belongs_to :company
  validates :email, presence: true, uniqueness: true
end
