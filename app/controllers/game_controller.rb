class GameController < ApplicationController
  def homepage
    render({ :template => "game_templates/homepage" })
  end

  def rock
    moves = ["rock", "paper", "scissors"]

    @comp_moves = moves.sample

    if @comp_moves == "rock"
      @outcome = "tied"
    elsif @comp_moves == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render({ :template => "game_templates/play_rock" })
  end

  def paper
    moves = ["rock", "paper", "scissors"]

    @comp_moves = moves.sample

    if @comp_moves == "paper"
      @outcome = "tied"
    elsif @comp_moves == "scissors"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render({ :template => "game_templates/play_paper" })
  end

  def scissors
    moves = ["rock", "paper", "scissors"]
  
  @comp_moves = moves.sample

  if @comp_moves == "scissors"
    @outcome = "tied"
  elsif @comp_moves == "rock"
    @outcome = "lost"
  else
    @outcome = "won"
  end

    render({ :template => "game_templates/play_scissors" })
  end

end
