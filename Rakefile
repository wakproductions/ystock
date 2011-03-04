# Rakefile
require 'rubygems'
require 'rake'
require 'echoe'
Echoe.new('ystock', '0.2.4') do |p|
  p.description    = "Get stock information from Yahoo Finance"
  p.url            = "http://github.com/gregwinn/ystock"
  p.author         = "Greg Winn"
  p.email          = "greg@winn.ws"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }

