class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @ask = params[:ask]
    @answer = "I don't care, get dressed and go to work!"
    if params[:ask] == "- I am going to work"
      @answer = "Great"
    elsif params[:ask].include?('?')
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer
    end
  end
end
