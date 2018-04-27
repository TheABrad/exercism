class Sieve
  def initialize(num)
    @max = num
  end

  def primes
    range = 2.upto(@max).to_a
    primes = []
    while range.any?
      prime = range.shift
      primes << prime
      range.reject! { |number| (number % prime).zero? }
    end
    primes
  end
end

module BookKeeping
  VERSION = 1
end
