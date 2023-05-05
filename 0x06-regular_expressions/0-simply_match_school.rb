#!/usr/bin/env ruby
# Ruby script that uses a regular expression that must match School
puts ARGV[0].scan(/School/).join
