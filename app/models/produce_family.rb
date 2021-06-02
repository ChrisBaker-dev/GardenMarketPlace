class ProduceFamily < ApplicationRecord
    has_many :produces, dependent: :destroy
end
