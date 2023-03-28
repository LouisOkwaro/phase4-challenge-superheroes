class HeroPower < ApplicationRecord
    attribute :hero_id, :integer
    attribute :power_id, :integer
    attribute :strength, :integer
    belongs_to :hero
    belongs_to :power
    validates :strength, inclusion: {in: ['Strong', 'Weak', 'Average']}
end
