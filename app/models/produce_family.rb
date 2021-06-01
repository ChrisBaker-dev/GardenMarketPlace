class ProduceFamily < ApplicationRecord
    has_many :produces, dependant: :destroy
end
