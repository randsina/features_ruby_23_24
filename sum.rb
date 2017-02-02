class Array
  alias core_sum sum
end

require 'benchmark/ips'
require 'active_support/core_ext/enumerable'

# ary = [1.0] * 1_000_000
ary = (1..1_000_000).to_a

Benchmark.ips do |x|
  x.report("core sum") { ary.core_sum }
  x.report("AS's sum") { ary.sum }

  x.compare!
end
