class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @message = params[:question]
    @coach_response = "I don't care, get dressed and go to work!"

    if @message == "I am going to work"
      @coach_response = "Great!"
    elsif @message.end_with?("?")
      @coach_response = "Silly question, get dressed and go to work!"
    end
  end
end
