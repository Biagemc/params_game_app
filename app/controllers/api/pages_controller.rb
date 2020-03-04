class Api::PagesController < ApplicationController
  def alphabet_position
    name_splitted = @user_name.split("")
    alphabet = ("A".."Z").to_a
    name_array = name_splitted.map { |letter| alphabet.index(letter) + 1 }

    return @letter_message = "Hey #{@user_name}, your name starts with the #{name_array[0]} letter of the alphabet!"
  end

  def guess_game
    @number = params["guess"].to_i
    if @number == 36
      @game_message = "You got it! That's my number"
    elsif @number > 36
      @game_message = "Almost there, but still too high!"
    else
      @game_message = "No, no.. Too low!"
    end
    return @game_message
  end

  def query
    @user_name = params["name"]
    @user_name = @user_name.upcase

    p "_____________________________________"
    alphabet_position()
    guess_game()
    render "params.json.jb"
  end
end
