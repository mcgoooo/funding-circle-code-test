require './lib/terminal_table_generator'
require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = 'Usage: terminal.rb [options]'
  options_text = 'amount of primes you wish to generate'
  opts.on('-cCOUNT', '--count=COUNT', options_text) do |c|
    options[:count] = c
  end
end.parse!

table = TerminalTableGenerator.new(options[:count]).table
puts table
