# DSPy.rb Configuration
# Configure your LLM provider here

DSPy.configure do |c|
  # OpenAI (uncomment and set OPENAI_API_KEY)
  # c.lm = DSPy::LM.new('openai/gpt-4o-mini',
  #                     api_key: ENV['OPENAI_API_KEY'],
  #                     structured_outputs: true)

  # Ollama (local, no API key needed - default)
  c.lm = DSPy::LM.new("ollama/glm-4.6:cloud")

  # Anthropic Claude (uncomment, add dspy-anthropic gem, set ANTHROPIC_API_KEY)
  # c.lm = DSPy::LM.new('anthropic/claude-sonnet-4-20250514',
  #                     api_key: ENV['ANTHROPIC_API_KEY'])
end
