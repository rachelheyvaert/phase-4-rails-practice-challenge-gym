class Gym < ApplicationRecord
    has_many :clients, through: :memberships
    has_many :memberships, dependent: :destroy

    validates :name, presence: true
end
