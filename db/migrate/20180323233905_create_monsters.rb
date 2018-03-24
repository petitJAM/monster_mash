class CreateMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :monsters do |t|
      t.string :name, null: false
      t.string :size, default: '', null: false
      t.string :creature_type, default: '', null: false
      t.string :alignment, default: '', null: false
      t.string :challenge_rating, default: '', null: false
      t.string :languages, array: true, default: [], null: false

      t.integer :speed, default: 0, null: false
      t.integer :climb_speed, default: 0, null: false
      t.integer :swim_speed, default: 0, null: false
      t.integer :fly_speed, default: 0, null: false

      t.integer :hit_points, default: 0, null: false
      t.integer :hit_die, default: 0, null: false
      t.integer :number_of_hit_dice, default: 0, null: false

      t.integer :strength, default: 0, null: false
      t.integer :dexterity, default: 0, null: false
      t.integer :constitution, default: 0, null: false
      t.integer :intelligence, default: 0, null: false
      t.integer :wisdom, default: 0, null: false
      t.integer :charisma, default: 0, null: false

      t.timestamps
    end
  end
end
