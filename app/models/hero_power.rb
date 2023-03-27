class HeroPower < ApplicationRecord
    belongs_to :hero, foreign_key: :hero_id, class_name: 'Hero'
    belongs_to :power,foreign_key: :power_id, class_name: 'Power'

    validates :strength, inclusion: { in: ['Average','Weak', 'Strong']}
end