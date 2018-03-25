this is a log of thinking on the challenge


## spec

the spec is make an output of a prime number multiplication times table.

Looking at the spec it is presumed that this is for human readable output,
i.e. the output is limited by the size of the terminal, so required efficiency
is limited by the size of the personsterminal window, this means that initially
we can probably disregard speed, as it is presumed whatever algorithim we take
should be able to handle this.

## testing
looking at the tests of the terminal-table gem, we can use the terminal-table instance
to test what individual output for each cell and test that. this means we can build up the
unit tests, and look at using that for the integration test.

## plan

1) write this plan ✅
2) research prime number generation ✅
3) write the first basic instance of prime number generation, will get the first prime number ✅
4) expand the class to be able to generate a list of prime numbers with the quantity needed passed in ✅
5) write a class to make the output of the prime numbers and multiplication for the gem
6) write final output class
