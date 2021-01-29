class Music < ApplicationRecord
    belongs_to :mood
    has_many :user_moods

    def video_link
        video_id = YouTubeAddy.extract_video_id(self.url)
        "https://www.youtube.com/embed/" + video_id
    end
end
