require 'irb'

class Test
  def self.hello(name)
    binding.irb
    puts "Hello #{name}"
  end
end

puts Test.hello('ender')
