#!/usr/bin/env ruby

require 'webrick'
include WEBrick

# Create an HTTP server
s = HTTPServer.new(
  :Port            => 8000,
  :DocumentRoot    => "./static-html"
)

# When the server gets a control-C, kill it
trap("INT") { s.shutdown }

# Start the server
s.start()
