# Text summarizer
#
# Usage from console:
#   summarizer = DSPy::Predict.new(Summarizer)
#   result = summarizer.call(text: "Your long text here...")
#   puts result.summary
#
class Summarizer < DSPy::Signature
  description "Summarize text in one concise sentence."

  input do
    const :text, String
  end

  output do
    const :summary, String
  end
end
