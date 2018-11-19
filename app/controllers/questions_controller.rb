class QuestionsController < ApplicationController
  def ask
  end

  def answer
    puts params
    @question = params['sentence']
    if @question == 'I am going to work right now!'
      @answer = 'Great!'
    elsif @question.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  # def create
  #   render plain: "Add to DB question '#{params [:moi]}'"
  # end


   # def post(your_message)
  #   if your_message == 'I am going to work right now!'
  #     return 'Great!'
  #   elsif your_message.include? '?'
  #     return 'Silly question, get dressed and go to work!'
  #   else
  #     return "I don't care, get dressed and go to work!"
  #   end
   # end
end

# def coach_answer_enhanced(your_message)
#   if your_message == "I AM GOING TO WORK RIGHT NOW!"
#     return ""
#   elsif your_message.upcase == your_message
#     return "I can feel your motivation! #{coach_answer(your_message)}"
#   else
#     return coach_answer(your_message)
#   end

