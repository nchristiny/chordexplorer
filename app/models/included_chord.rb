class IncludedChord < ActiveRecord::Base
  belongs_to  :chord
  belongs_to  :tab, dependent: :destroy

  def self.without(chord_ids)
    where('included_chords.chord_id NOT IN (?)', chord_ids)
  end
end
