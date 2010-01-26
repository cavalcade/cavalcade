#!/usr/bin/env ruby

require 'webrick'
include WEBrick

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
