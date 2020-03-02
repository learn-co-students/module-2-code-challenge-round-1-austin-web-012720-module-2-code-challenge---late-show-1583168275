class Episode < ApplicationRecord
    has_many :guests, through :appearance
end
