#!/usr/bin/env ruby

require 'webrick'
include WEBrick

# Sure ./ works for linux, but this is what it takes to be OS independent
doc_root = File.dirname(__FILE__)+File::SEPARATOR+"static-html"

# Create an HTTP server
s = HTTPServer.new(
  :Port            => 8000,
  :DocumentRoot    => doc_root 
)

# When the server gets a control-C, kill it
trap("INT") { s.shutdown }

# Start the server
s.start()
