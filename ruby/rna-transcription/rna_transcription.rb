class Complement
  COMPLEMENT = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }.freeze

  def self.of_dna(strand)
    strand.chars.map { |val| COMPLEMENT[val] || (return '') }.join
  end
end

module BookKeeping
  VERSION = 4
end
