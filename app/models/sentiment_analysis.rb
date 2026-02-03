# Sentiment analysis with typed enum output
#
# Usage from console:
#   classifier = DSPy::Predict.new(SentimentAnalysis)
#   result = classifier.call(text: "I love this product! It's amazing!")
#   puts "Sentiment: #{result.sentiment}, Confidence: #{result.confidence}"
#
class SentimentAnalysis < DSPy::Signature
  description "Classify text sentiment as positive, negative, or neutral."

  input do
    const :text, String
  end

  output do
    const :sentiment, T.enum(:positive, :negative, :neutral)
    const :confidence, Float
  end
end
