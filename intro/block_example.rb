# frozen_string_literal: true

def call_block
  puts 'Start of method'
  yield
  yield
  puts 'End of method'
end

call_block { puts 'In the block' }
