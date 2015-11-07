gem 'minitest'
require './lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test

  def test_it_can_uppercase_a_string
    assert_equal "ZZ", Scrabble.new.prep("zZ")
  end

  def test_it_can_convert_any_input_to_a_string
    assert_equal "1", Scrabble.new.prep(1)
  end

  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")
    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_returns_0_for_an_empty_word
    assert_equal 0, Scrabble.new.score("")
  end

  def test_it_returns_0_for_nil
    assert_equal 0, Scrabble.new.score(nil)
  end

  def test_returns_proper_value_for_full_word
    assert_equal 8, Scrabble.new.score("hello")
  end

  def test_it_can_return_the_highest_scoring_word
    assert_equal "axe", Scrabble.new.compare(["hello", "axe"])
  end


end
