class GamesController < ApplicationController
  def new
    #  L’action new servira à afficher une nouvelle grille aléatoire et un formulaire
    @letters = []
    10.times { @letters << ('a'..'z').to_a.sample }
  end

  def score
  # Le formulaire sera envoyé (avec POST) à l’action score
  url = 'https://wagon-dictionary.herokuapp.com/:word'
  @word = params[:word]
  @letters = params[:letters]
  @word.chars.all? { |letter| @word.count(letter) <= letters.count(letter) }
  'ça marche pas cest pas les bonnes lettres'
  end
end
