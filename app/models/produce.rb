class Produce < ApplicationRecord
  belongs_to :produce_family
  has_many :listings, through: :produce_listings
end
