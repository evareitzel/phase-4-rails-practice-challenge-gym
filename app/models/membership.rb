class Membership < ApplicationRecord
  belongs_to :client
  belongs_to :gym

  validates :charge, presence: true
  validates :gym_id, uniqueness:{ scope: :client }
end
