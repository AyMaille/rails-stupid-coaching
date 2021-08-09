class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @asked_question = params[:ask]
    if @asked_question == "I am going to work"
      @answer = "Great !"
    elsif @asked_question.split(" ")[-1].split("")[-1] == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
