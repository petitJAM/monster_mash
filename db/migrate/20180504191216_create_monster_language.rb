class CreateMonsterLanguage < ActiveRecord::Migration[5.1]
  def change
    create_table :monster_languages do |t|
      t.references :monster, index: true, foreign_key: true, null: false
      t.references :language, index: true, foreign_key: true, null: false
      t.timestamps
    end

    remove_column :monsters, :languages, :string, array: true, default: [], null: false
  end
end
