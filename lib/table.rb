class Table
  def initialize(numbers)
    @numbers = numbers
  end

  def rows
    @numbers.map do |number|
      single_row(number, @numbers)
    end
  end

  private

  def single_row(row_number, numbers)
    numbers.map do |number|
      row_number * number
    end
  end
end
