class Monster < ApplicationRecord
  has_many :monster_languages, dependent: :destroy
  has_many :languages, through: :monster_languages
  accepts_nested_attributes_for :monster_languages, allow_destroy: true

  CHALLENGE_RATINGS = ['0', '1/8', '1/4', '1/2'] + (1..30).map(&:to_s)
  validates :challenge_rating, inclusion: { in: CHALLENGE_RATINGS }

  module HitDie
    D4 = 4
    D6 = 6
    D8 = 8
    D10 = 10
    D12 = 12
    D20 = 20
  end
  HIT_DICE = HitDie.constants.map &HitDie.method(:const_get)
  validates :hit_die, inclusion: { in: HIT_DICE }

  module Size
    TINY = 'tiny'
    SMALL = 'small'
    MEDIUM = 'medium'
    LARGE = 'large'
    HUGE = 'huge'
    GARGANTUAN = 'gargantuan'
  end
  SIZES = Size.constants.map &Size.method(:const_get)
  validates :size, inclusion: { in: SIZES }

  module Alignment
    UNALIGNED = 'unaligned'
    LAWFUL_EVIL = 'lawful_evil'
    NEUTRAL_EVIL = 'neutral_evil'
    CHAOTIC_EVIL = 'chaotic_evil'
    LAWFUL_NEUTRAL = 'lawful_neutral'
    NEUTRAL = 'neutral'
    CHAOTIC_NEUTRAL = 'chaotic_neutral'
    LAWFUL_GOOD = 'lawful_good'
    NEUTRAL_GOOD = 'neutral_good'
    CHAOTIC_GOOD = 'chaotic_good'
  end
  ALIGNMENTS = Alignment.constants.map &Alignment.method(:const_get)
  validates :alignment, inclusion: { in: ALIGNMENTS }

end
