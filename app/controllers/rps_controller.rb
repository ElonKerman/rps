class RpsController < ApplicationController
  def start
    render("start.html.erb")
  end
  # def rock
  #   @comm=['rock', 'paper', 'scissors'].sample
  #   render("rock.html.erb")
  # end
  # def paper
  #   render("paper.html.erb")
  # end
  # def scissors
  #   render("scissors.html.erb")
  # end
  def gen
    @userm = params['choice']

    if @userm == 'rock'
      @comm = 'paper'
    elsif @userm == 'paper'
      @comm = 'scissors'
    elsif @userm == 'scissors'
      @comm = 'rock'
    end



    @message="You humans suck we will take over Lets go A.I. Elon Musk Suxs because he hates A.I. Also NM IT Suxs"
    render('gen.html.erb')
  end
end
