#! /usr/bin/ruby
# pequeno script gerador de apostas para a mega-sena =P

result = []

while result.size < 6
    number = rand(59) + 1
    formatted_number = "%02d" % number
    result << formatted_number
    result.uniq!
end

puts result.join(" - ")
