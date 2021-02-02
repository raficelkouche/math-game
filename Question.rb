class Question

  def initialize
    @questionAnswer = generate_question
  end

  def check_answer(attempt)
    attempt == @questionAnswer[2]
  end

  def get_question
    "What is #{@questionAnswer[0]} plus #{@questionAnswer[1]} ?"
  end
  
  private
  def generate_question 
    questionArray = [rand(1..20), rand(1..20)]
    questionArray << questionArray[0] + questionArray[1]
  end

end