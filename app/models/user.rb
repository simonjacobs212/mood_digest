class User < ApplicationRecord
has_many :user_moods
has_many :moods, through: :user_moods
has_many :musics, through: :user_moods
has_many :arts, through: :user_moods
has_many :quotes, through: :user_moods
end
