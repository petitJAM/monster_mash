class CreateMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :monsters do |t|
      t.string :name, null: false
      t.string :size, default: '', null: false
      t.string :creature_type, default: '', null: false
      t.string :alignment, default: '', null: false
      t.string :challenge_rating, default: '', null: false
      t.string :languages, array: true, default: [], null: false

      t.integer :speed, default: 30, null: false
      t.integer :burrow_speed, default: 0, null: false
      t.integer :climb_speed, default: 0, null: false
      t.integer :fly_speed, default: 0, null: false
      t.integer :swim_speed, default: 0, null: false

      t.integer :armor_class, default: 10, null: false
      t.string :armor_source, default: '', null: false
      t.integer :hit_points, default: 0, null: false
      t.integer :hit_die, null: false
      t.integer :number_of_hit_dice, default: 1, null: false

      t.string :vulnerabilities, array: true, default: [], null: false
      t.string :resistances, array: true, default: [], null: false
      t.string :immunities, array: true, default: [], null: false
      t.string :condition_immunities, array: true, default: [], null: false
      t.string :skills, array: true, default: [], null: false
      t.string :senses, array: true, default: [], null: false

      t.integer :strength, null: false
      t.integer :dexterity, null: false
      t.integer :constitution, null: false
      t.integer :intelligence, null: false
      t.integer :wisdom, null: false
      t.integer :charisma, null: false

      t.timestamps
    end
  end
end
