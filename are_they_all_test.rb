gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreTheyAllTest < Minitest::Test

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = false
    remaining = []
    numbers.each do |number|
      remaining << number if number != 0
    end
    refute_equal all_zeros, remaining
  end

  def test_all_zeros
    numbers = [0, 0, 0, 0, 0, 0, 0, 0]
    all_zeros = [0, 0, 0, 0, 0, 0, 0, 0]
    remaining = []
    numbers.each do |num|
      remaining << num if num == 0
    end
    assert_equal all_zeros, remaining
  end

  def test_all_gone
    words = %w(gone gone gone gone gone gone gone)
    all_gone = %w(gone gone gone gone gone gone gone)
    remaining = []
    words.each do |word|
      remaining << word if word == 'gone'
    end
    assert_equal all_gone, remaining
  end

  def test_not_all_gone
    words = %w(gone gone gone gone gone gone gone yepp)
    all_gone = %w(gone gone gone gone gone gone gone yepp)
    remaining = []
    words.each do |word|
      remaining << word if word != 'gone'
    end
    refute_equal all_gone, remaining
  end

  def test_all_empty
    words = ["", "", "", "", ""]
    all_empty = ["", "", "", ""]
    remaining = []
    words.each do |word|
      remaining << word if word == ""
    end
    assert all_empty, remaining
  end

  def test_not_all_empty
    words = ["full", "", "", "", "", ""]
    all_empty =["full", "", "", "", "", ""]
    remaining = []
    words.each do |word|
      remaining << word if word != ""
    end
    refute_equal all_empty, remaining
  end
end

