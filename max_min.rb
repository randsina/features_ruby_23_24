require 'benchmark/ips'

Benchmark.ips do |bench|
  NUMS = 1_000_000.times.map { rand }

  # By binding the Enumerable method to our array
  # we can bench the previous speed in Ruby 2.3
  ENUM_MIN  = Enumerable.instance_method(:min).bind(NUMS)

  # Bind the `#min` method to our test array also
  # so our benchmark code is as similar as possible
  ARRAY_MIN = Array.instance_method(:min).bind(NUMS)

  bench.report('Array#min') do
    ARRAY_MIN.call
  end

  bench.report('Enumerable#min') do
    ENUM_MIN.call
  end

  bench.compare!
end
