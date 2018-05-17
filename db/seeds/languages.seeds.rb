Language.transaction do
  languages = ["Common", "Abyssal", "Aquan", "Auran", "Celestial", "Deep Speech",
    "Draconic", "Dwarvish", "Elvish", "Giant", "Gnomish", "Goblin", "Gnoll", "Halfing",
    "Ignan", "Infernal", "Orc", "Primordial", "Sylvan", "Terran", "Undercommon"]

  languages.each do |language|
    Language.find_or_create_by! name: language
  end
end
