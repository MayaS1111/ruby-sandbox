require "active_support/all"
require "awesome_print/all"
require "pry-byebug/all"

my_string = "Hello, world!"
pp my_string

1.ordinalize    # => "1st"
2.ordinalize    # => "2nd"
53.ordinalize   # => "53rd"
2009.ordinalize # => "2009th"
puts -21.ordinalize  # => "-21st"
-134.ordinalize # => "-134th"

"table".pluralize     # => "tables"
puts "ruby".pluralize      # => "rubies"
"equipment".pluralize # => "equipment"

puts "tables".singularize    # => "table"
"rubies".singularize    # => "ruby"
"equipment".singularize # => "equipment"

require "./goodbye.rb"
