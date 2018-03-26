require 'table'
require 'prime_generator'

describe Table do
  describe 'rows' do
    context 'given a singluar number in an array' do
      it 'it should produce a singluar row with a singular column' do
        expect(Table.new(PrimeGenerator.first).rows).to eql([[4]])
      end
    end
    context 'given a set of three numbers' do
      it 'it should produce the rows correctly' do
        expect(Table.new([2, 4, 8]).rows).to eql([
          [4, 8, 16],
          [8, 16, 32],
          [16, 32, 64]
        ])
      end
    end
  end
end
