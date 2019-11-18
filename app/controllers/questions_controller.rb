class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @reponse = 'Great!'
    elsif @question.end_with?('?')
      @reponse = 'Silly question, get dressed and go to work!'
    else
      @reponse = 'I don\'t care, get dressed and go to work!'
    end
  end
end
