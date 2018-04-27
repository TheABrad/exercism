class Raindrops
  CONVERSIONS = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }.freeze

  def self.convert(num)
    check_factors = [3, 5, 7].select { |i| (num % i).zero? }
    if check_factors.empty?
      num.to_s
    else
      check_factors.map { |n| CONVERSIONS[n] }.join
    end
  end
end

module BookKeeping
  VERSION = 3
end
