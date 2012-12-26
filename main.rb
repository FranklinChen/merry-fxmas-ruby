#!/usr/bin/env ruby

# Without macros, have to roll own using eval with a string (terrible).
def repeat_message(n)
  s = <<EOS1
begin
EOS1

  n.downto(1) do |i|
    s << <<EOS2
  puts "Merry Christmas Bill #{i}!"
EOS2
  end

  s << <<EOS3
end
EOS3

  s
end

eval(repeat_message(25))
