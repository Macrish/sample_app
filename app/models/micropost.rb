class Micropost < ApplicationRecord
  validates :user_id, presence: true
end
