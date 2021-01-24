class User < ApplicationRecord
has_many :user_moods
has_many :moods, through: :user_moods
has_many :musics, through: :user_moods
has_many :arts, through: :user_moods
has_many :quotes, through: :user_moods

has_secure_password
validates :username, uniqueness: {case_sensitive: false}, presence: true

# def not_logged_in
#     # byebug
#     if session[:user_id].nil?
#         errors.add(:username, "this heroine already has this power")
#     end
# end

end
