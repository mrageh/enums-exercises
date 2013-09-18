gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreTheyAllTest < Minitest::Test

  def test_not_all_zeros
    numbers = [0, 0, 0, 0, 1, 0, 0, 0]
    all_zeros = true
    numbers.each do |number|
      all_zeros = false unless number == 0
    end
    refute all_zeros
  end

  def test_all_zeros
    numbers = [0, 0, 0, 0, 0, 0, 0, 0]
    all_zeros = false
    numbers.each do |number|
      all_zeros = true if number == 0
    end
    assert all_zeros
  end

  def test_all_gone
    words = %w(gone gone gone gone gone gone gone)
    all_gone = false
    words.each do |word|
      all_gone = true if word = 'gone'
    end
    assert all_gone
  end

  def test_not_all_gone
    words = %w(gone gone gone gone gone gone gone yepp)
    all_gone = true
    words.each do |word|
      all_gone = false if word == 'gone'
    end
    refute all_gone
  end

  def test_all_empty
    words = ["", "", "", "", ""]
    all_empty = false
    words.each do |word|
      all_empty = true if word == ''
    end
    assert all_empty
  end

  def test_not_all_empty
    words = ["full", "", "", "", "", ""]
    all_empty = true
    words.each do |word|
      all_empty = false unless word == ''
    end
    refute all_empty
  end
end
