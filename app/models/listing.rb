class Listing < ApplicationRecord
  belongs_to :farmer
  belongs_to :produce
end
