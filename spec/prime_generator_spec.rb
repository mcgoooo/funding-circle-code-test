require "prime_generator"
require "prime"
describe PrimeGenerator do
    describe ".first" do
    context "given no arguments" do
      it "should return the first prime number as a string" do
        expect(PrimeGenerator.first).to eql(Prime.first)
      end
      it "should return the first 100 prime numbers as an array" do
        expect(PrimeGenerator.first(100)).to eql(Prime.first(100))
      end

    end
  end
end
