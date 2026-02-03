# DSPy.rb Testing App

A Rails application for testing [DSPy.rb](https://github.com/vicentereig/dspy.rb) - a Ruby framework for structured LLM programming.

## Requirements

- Ruby 3.4.8
- Rails 8.1.2
- [Ollama](https://ollama.ai/) (for local LLM inference)

## Setup

```bash
bundle install
```

### Configure Ollama

Make sure Ollama is running and you have a model installed:

```bash
# List available models
ollama list

# Pull a model if needed
ollama pull llama3.2
```

Update the model in `config/initializers/dspy.rb` to match your installed model.

## Usage

Start the Rails console:

```bash
bin/rails console
```

### Available Signatures

#### QuestionAnswer

Simple Q&A with factual answers.

```ruby
qa = DSPy::Predict.new(QuestionAnswer)
result = qa.call(question: "What is the capital of France?")
result.answer
```

#### MathProblem

Math solver with step-by-step reasoning (Chain of Thought).

```ruby
solver = DSPy::ChainOfThought.new(MathProblem)
result = solver.call(problem: "What is 15% of 80?")
result.reasoning  # Step-by-step explanation
result.answer     # Final answer
```

#### SentimentAnalysis

Text sentiment classification with confidence score.

```ruby
classifier = DSPy::Predict.new(SentimentAnalysis)
result = classifier.call(text: "I love this product!")
result.sentiment   # :positive, :negative, or :neutral
result.confidence  # Float between 0 and 1
```

#### Summarizer

Summarize text into one concise sentence.

```ruby
summarizer = DSPy::Predict.new(Summarizer)
result = summarizer.call(text: "Your long text here...")
result.summary
```

## Configuration

Edit `config/initializers/dspy.rb` to change the LLM provider:

```ruby
# Ollama (local)
c.lm = DSPy::LM.new("ollama/llama3.2")

# OpenAI (requires OPENAI_API_KEY)
c.lm = DSPy::LM.new("openai/gpt-4o-mini",
                    api_key: ENV["OPENAI_API_KEY"],
                    structured_outputs: true)

# Anthropic Claude (requires dspy-anthropic gem and ANTHROPIC_API_KEY)
c.lm = DSPy::LM.new("anthropic/claude-sonnet-4-20250514",
                    api_key: ENV["ANTHROPIC_API_KEY"])
```

## Resources

- [DSPy.rb Documentation](https://oss.vicente.services/dspy.rb/)
- [DSPy.rb GitHub](https://github.com/vicentereig/dspy.rb)
