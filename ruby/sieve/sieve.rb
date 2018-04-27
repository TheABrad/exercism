class Sieve
  def initialize(num)
    @num = num
  end

  def primes
    primes = []
    (2..@num).each do |n|
      primes << n
    end
  end
end
