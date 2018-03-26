require "./lib/prime_generator"
require "./lib/table"
require 'terminal-table'


class TerminalTableGenerator
  STYLE = {
    :border_x => "-",
    :border_y => "",
    :border_top => false,
    :border_bottom => false
  }
  attr_accessor :table

  def initialize(prime_count)
    @primes = PrimeGenerator.first(prime_count)
    @multiplication_table = Table.new(@primes).rows
    @table = Terminal::Table.new :rows => @multiplication_table, :headings => @primes , :style => STYLE
  end

end
