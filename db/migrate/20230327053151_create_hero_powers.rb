class CreateHeroPowers < ActiveRecord::Migration[7.0]
  def change
    create_table :hero_powers do |t|
      t.string :strength
      t.belongs_to :hero, foreign_key: true
      t.belongs_to :power, foreign_key: true 
      
      t.timestamps
    end
  end
end
