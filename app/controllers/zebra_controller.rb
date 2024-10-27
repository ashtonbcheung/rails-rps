class ZebraController < ApplicationController
  def giraffe
    @computer_choice = ["rock", "paper", "scissors"].sample
    @outcome = ""

    if @computer_choice == "paper"
      @outcome = "We lost!"
    elsif @computer_choice == "scissors"
      @outcome = "We won!"
    else
      @outcome = "We tied!"
    end
    render({ :template => "game_templates/play_rock"})
  end
  def elephant
    @computer_choice = ["rock", "paper", "scissors"].sample
    @outcome = ""
  
    if @computer_choice == "paper"
      @outcome = "We tied!"
    elsif @computer_choice == "scissors"
      @outcome = "We lost!"
    else
      @outcome = "We won!"
    end

    render({ :template => "game_templates/play_paper"})
  end
  def lion
    @computer_choice = ["rock", "paper", "scissors"].sample
    @outcome = ""
  
    if @computer_choice == "paper"
      @outcome = "We won!"
    elsif @computer_choice == "scissors"
      @outcome = "We tied!"
    else
      @outcome = "We lost!"
    end

    render({ :template => "game_templates/play_scissors"})
  end
  def rules
    render({ :template => "game_templates/rules"})
  end
end
