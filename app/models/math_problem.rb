# Math problem solver with Chain of Thought reasoning
#
# Usage from console:
#   solver = DSPy::ChainOfThought.new(MathProblem)
#   result = solver.call(problem: "If a train travels 120km in 2 hours, what is its speed?")
#   puts result.reasoning
#   puts result.answer
#
class MathProblem < DSPy::Signature
  description "Solve math problems step by step."

  input do
    const :problem, String
  end

  output do
    const :reasoning, String
    const :answer, String
  end
end
