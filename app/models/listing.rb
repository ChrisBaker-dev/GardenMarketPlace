class Listing < ApplicationRecord
  belongs_to :farmer
  belongs_to :produce
  has_many :produces, through: :produce_listings
end
