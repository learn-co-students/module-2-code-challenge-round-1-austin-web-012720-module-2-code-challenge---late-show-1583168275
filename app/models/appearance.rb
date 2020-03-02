class Appearance < ApplicationRecord
   has_one :guest
   has_many :episodes
end