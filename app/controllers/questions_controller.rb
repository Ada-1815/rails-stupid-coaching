class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @ask = params[:ask]
    @answer = generate_answer(@ask)
  end

end

def generate_answer(ask)
  ask = ask.strip.downcase

  case ask
  when "i am going to work"
    "Great!"
  when ask.end_with?("?")
    "Silly question, go to work!"
  else
    "Don't care"
  end
end
