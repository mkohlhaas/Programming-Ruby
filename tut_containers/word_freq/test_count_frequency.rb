# frozen_string_literal: true

require_relative 'count_frequency'
require 'minitest/autorun'

# TestCountFrequency class
class TestCountFrequency < Minitest::Test
  def test_empty_list
    assert_equal({}, count_frequency([]))
  end

  def test_single_word
    assert_equal({ 'cat' => 1 }, count_frequency(['cat']))
  end

  def test_two_different_words
    assert_equal({ 'cat' => 1, 'sat' => 1 }, count_frequency(%w[cat sat]))
  end

  def test_two_words_with_adjacent_repeat
    assert_equal({ 'cat' => 2, 'sat' => 1 }, count_frequency(%w[cat cat sat]))
  end

  def test_two_words_with_non_adjacent_repeat
    assert_equal({ 'cat' => 2, 'sat' => 1 }, count_frequency(%w[cat sat cat]))
  end
end
