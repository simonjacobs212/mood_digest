class Mood < ApplicationRecord
    has_many :user_moods
    has_many :users, through: :user_moods
    has_many :musics
    has_many :arts
    has_many :quotes
end
