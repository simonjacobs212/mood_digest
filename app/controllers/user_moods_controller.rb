class UserMoodsController < ApplicationController
  before_action :set_user_mood, only: [:show, :destroy, :update]
  before_action :greeting, only: [:show, :index]
 
  def index
    @usermoods = @current_user.user_moods
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
      quote_id: random_quote_id(mood),
      art_id: random_art_id(mood),
      music_id: random_music_id(mood)
    )
    redirect_to user_mood_path(@usermood)
  end

  def random_quote_id(mood)
    Quote.all.select {|quote| quote.mood.id == mood.id}.sample.id
  end

  def random_art_id(mood)
    Art.all.select {|art| art.mood.id == mood.id}.sample.id
  end

  def random_music_id(mood)
    Music.all.select {|music| music.mood.id == mood.id}.sample.id
  end

  def update
  end

  def improve_user_mood
    @usermood = UserMood.find(params[:id])
    mood = @usermood.mood
    if mood.id == 1
      redirect_to user_mood_path(@usermood), notice: "You're already happy, we wouldn't want to change that."
    else
      new_mood = improve_mood(mood)
      @usermood.update(
        user_id: @current_user.id,
        mood_id: new_mood.id,
        quote_id: random_quote_id(new_mood),
        art_id: random_art_id(new_mood),
        music_id: random_music_id(new_mood)
      )
      redirect_to user_mood_path(@usermood)
    end
  end

  def destroy
    @usermood.destroy
    redirect_to user_moods_path
  end

  private

  def user_mood_params
    params.require(:user_mood).permit(:user_id, :mood_id, :quote_id, :music_id, :art_id)
  end

  def set_user_mood
    @usermood = UserMood.find(params[:id])
  end

  def improve_mood(mood)
    if mood.id == 1
      return mood
    elsif mood.id == 2
      return Mood.find(1)
    else mood.id == 3
      return Mood.find(1)
    end
  end

end
