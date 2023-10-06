# frozen_string_literal: true

require_relative "aaagmnr/finder"
require_relative "aaagmnr/options"
require_relative "aaagmnr/runner"
require_relative "aaagmnr/version"
require "optparse"
require "sorbet-runtime"

module Aaagmnr
  class Error < StandardError; end
  # Your code goes here...
end
