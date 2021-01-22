class Music < ApplicationRecord
    belongs_to :mood
    has_many :user_moods
end
