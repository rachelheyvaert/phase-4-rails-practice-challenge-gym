class Membership < ApplicationRecord
  belongs_to :gym
  belongs_to :client

  validates :client, uniqueness: {scope: :gym}
  #client can belong to more than one gym but not the same gym twice^^
end
