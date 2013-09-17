gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreThereAnyTest < Minitest::Test
  def test_has_a_zero
    numbers = [2, 9, 3, 1, 0]
    has_zero = [0]
    remaining = []
    numbers.each do |number|
      remaining << number if number == 0
    end
    assert_equal has_zero, remaining
  end

  def test_has_zeros
    numbers = [3, 1, 0, 7, 9, 0]
    has_zero = [0, 0]
    remaining = []
    numbers.each do |num|
      remaining << num if num == 0
    end
    assert_equal has_zero, remaining
  end

  def test_does_not_have_zero
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = [0]
    remaining = []
    numbers.each do |num|
      remaining << num if num != 0
    end
    refute_equal has_zero, remaining
  end

  def test_no_alice
    names = %w(chuck charlene cory chris carl)
    has_alice = ['Alice', 'alice']
    remaining = []
    names.each do |name|
      remaining << name unless name == 'alice'
    end
    refute_equal has_alice,  remaining
  end

  def test_has_alice
    names = %w(bill bob burton alice brandon)
    has_alice = ['alice']
    remaining =[]
    names.each do |name|
      remaining << name if name == 'alice'
    end
    assert_equal has_alice, remaining
  end
end

