#!/usr/bin/env ruby
# Regular expression that matches a given pattern
# Script that outputs: [SENDER],[RECEIVER],[FLAGS]
# Sender phone number or name (including country code if present)
# Receiver phone number or name (including country code if present)
# Flags that were used
puts ARGV[0].scan(/\[from:(.*?)\]\s\[to:(.*?)\]\s\[flags:(.*?)\]/).join(',')
