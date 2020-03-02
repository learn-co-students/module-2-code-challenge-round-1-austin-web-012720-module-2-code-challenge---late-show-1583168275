class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest
  validates_inclusion_of :rating, :in => (1..5), :message => "Rating can only be between 1 and 5!"
  validates :guest, uniqueness: { scope: :episode_id, message: "#{:guest} can only appear once per episode."}
end
