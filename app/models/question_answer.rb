# Simple Q&A signature
#
# Usage from console:
#   qa = DSPy::Predict.new(QuestionAnswer)
#   result = qa.call(question: "What is the capital of France?")
#   puts result.answer
#
class QuestionAnswer < DSPy::Signature
  description "Answer questions with short factual answers."

  input do
    const :question, String
  end

  output do
    const :answer, String
  end
end
