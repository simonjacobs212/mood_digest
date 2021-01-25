class UserMoodsController < ApplicationController
  before_action :set_user_mood, only: [:show]
  
  def index
    @current_user.user_moods
  end

  def show
  end

  def new
    @usermood = UserMood.new
  end
  
  def create
    mood = Mood.find(params[:user_mood][:mood_id])
    @usermood = UserMood.create(
      user_id: @current_user.id,
      mood_id: mood.id,
      quote_id: random_quote(mood),
      art_id: random_art(mood),
      music_id: random_music(mood)
    )
    redirect_to user_mood_path(@usermood)
  end

  def random_quote(mood)
    Quote.all.select {|quote| quote.mood.id == mood.id}.sample.id
  end

  def random_art(mood)
    Art.all.select {|art| art.mood.id == mood.id}.sample.id
  end

  def random_music(mood)
    Music.all.select {|music| music.mood.id == mood.id}.sample.id
  end

  def destroy
  end

  private

  def user_mood_params
    params.require(:user_mood).permit(:user_id, :mood_id, :quote_id, :music_id, :art_id)
  end

  def set_user_mood
    @usermood = UserMood.find(params[:id])
  end

end
