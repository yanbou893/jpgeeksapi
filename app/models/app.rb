class App < ApplicationRecord
    belongs_to :user
    has_many :monetizes
    has_many :notes
    has_many :updates
end
