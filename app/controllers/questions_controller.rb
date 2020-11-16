def coach_answer(your_message)
    # TODO: return coach answer to your_message
  if your_message != "I am going to work right now!"
    if your_message.include?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end
  return "Great !"
end

def coach_answer_enhanced(your_message)
  case
  when your_message == "I AM GOING TO WORK RIGHT NOW!"
    return "GREAT !"
  when your_message == your_message.upcase
    return "I can feel your motivation! #{coach_answer(your_message)}"
  else
    return coach_answer(your_message)
  end
end

class QuestionsController < ApplicationController
  def home
  end

  def ask
  end

  def answer
    @your_message = params[:answer]
    @coach_answer = coach_answer_enhanced(@your_message)
  end
end
