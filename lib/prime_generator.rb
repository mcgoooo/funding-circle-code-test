class PrimeGenerator
  def self.first(prime_count=1)
    primes = []
    enumerator = 0
    while primes.length < prime_count do
      primes.push(enumerator) if self.is_prime?(enumerator)
      enumerator+=1
    end

    primes
  end


  def self.is_prime?(number)
    return false if number <= 1
    max = Math.sqrt(number)

    (2..max).any? do |i|
      if number % i == 0 then return false end
    end

    true
  end
end
