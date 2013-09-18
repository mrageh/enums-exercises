gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class AreThereAnyTest < Minitest::Test
  def test_has_a_zero
    numbers = [2, 9, 3, 1, 0]
    has_zero = false
    numbers.each do |number|
     has_zero = true if number == 0
    end
    assert has_zero
  end

  def test_has_zeros
    numbers = [3, 1, 0, 7, 9, 0]
    has_zero = false
    count = 0
    numbers.each do |number|
      count += 1 if number == 0
      has_zero = true if count > 1
    end
    assert has_zero
  end

  def test_does_not_have_zero
    numbers = [3, 1, 3, 2, 4, 9, 8]
    has_zero = true
    numbers.each do |number|
      has_zero = false unless number == 0
    end
    refute has_zero
  end

  def test_no_alice
    names = %w(chuck charlene cory chris carl)
    has_alice = true
    names.each do |name|
      has_alice = false unless name == 'alice'
    end
    refute has_alice
  end

  def test_has_alice
    names = %w(bill bob burton alice brandon)
    has_alice = false
    names.each do |name|
      has_alice = true if name = 'alice'
    end
    assert has_alice
  end
end

