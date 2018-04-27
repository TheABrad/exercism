class Integer

  ROMAN_MAPPING = {
    1000 => 'M',
    900 => 'CM',
    500 => 'D',
    400 => 'CD',
    100 => 'C',
    90 => 'XC',
    50 => 'L',
    40 => 'XL',
    10 => 'X',
    9 => 'IX',
    5 => 'V',
    4 => 'IV',
    1 => 'I'
  }.freeze

  def to_roman
    n = self
    roman = ''
    ROMAN_MAPPING.each do |num, roman_map|
      roman << roman_map * (n / num)
      n = n % num
    end
    roman
  end
end

module BookKeeping
  VERSION = 2
end
