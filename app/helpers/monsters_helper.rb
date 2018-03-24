module MonstersHelper

  def challenge_rating_options_collection
    Monster::CHALLENGE_RATINGS.map { |cr| [cr, cr] }
  end

  def selected_challenge_rating_option
    ['0', '0']
  end

  def size_options_collection
    [
      ['Gargantuan', Monster::Size::GARGANTUAN],
      ['Huge', Monster::Size::HUGE],
      ['Medium', Monster::Size::MEDIUM],
      ['Small', Monster::Size::SMALL],
      ['Large', Monster::Size::LARGE],
      ['Tiny', Monster::Size::TINY]
    ]
  end

  def selected_size_option
    ['Medium', Monster::Size::MEDIUM]
  end

  def alignment_options_collection
    [
      ['Unaligned', Monster::Alignment::UNALIGNED],
      ['Lawful Evil', Monster::Alignment::LAWFUL_EVIL],
      ['Neutral Evil', Monster::Alignment::NEUTRAL_EVIL],
      ['Chaotic Evil', Monster::Alignment::CHAOTIC_EVIL],
      ['Lawful Neutral', Monster::Alignment::LAWFUL_NEUTRAL],
      ['Neutral', Monster::Alignment::NEUTRAL],
      ['Chaotic Neutral', Monster::Alignment::CHAOTIC_NEUTRAL],
      ['Lawful Good', Monster::Alignment::LAWFUL_GOOD],
      ['Neutral Good', Monster::Alignment::NEUTRAL_GOOD],
      ['Chaotic Good', Monster::Alignment::CHAOTIC_GOOD]
    ]
  end

  def selected_alignment_option
    ['Unaligned', Monster::Alignment::UNALIGNED]
  end

  def hit_die_options_collection
    [
      ['d4', 4],
      ['d6', 6],
      ['d8', 8],
      ['d10', 10],
      ['d12', 12]
    ]
  end
end
