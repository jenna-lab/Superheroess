class Hero < ApplicationRecord
    self.table_name = "heroes"
    has_many :hero_powers
    has_many :powers, through: :hero_powers
end