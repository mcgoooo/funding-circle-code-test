require "./lib/terminal_table_generator"
require 'optparse'

options = {}
OptionParser.new do |opts|
  opts.banner = "Usage: terminal.rb [options]"

  opts.on("-cCOUNT", "--count=COUNT", "amount of primes you wish to generate") do |c|
    options[:count] = c
  end
end.parse!

table = TerminalTableGenerator.new(options[:count]).table
puts table
