class HeroPower < ApplicationRecord
    belongs_to :hero
    belongs_to :power

    validates :strength, inclusion: { in: ['Average','Weak', 'Strong']}
end
