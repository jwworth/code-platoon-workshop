class Raindrops
  def self.convert(n)
    result = ''
    result << 'Pling' if divisable?(n, 3)
    result << 'Plang' if divisable?(n, 5)
    result << 'Plong' if divisable?(n, 7)

    result.length > 0 ? result : n.to_s
  end

  private

  def self.divisable?(number, divisor)
    number % divisor == 0
  end
end
