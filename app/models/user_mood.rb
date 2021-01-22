class UserMood < ApplicationRecord
    belongs_to :user
    belongs_to :mood
    belongs_to :art
    belongs_to :music
    belongs_to :quote
end
