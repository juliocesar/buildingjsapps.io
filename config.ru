require 'rubygems'

use Rack::Static,
  :root => File.dirname(__FILE__),
  :urls => %w(/css /js /img)
  
map '/' do
  run Proc.new { |env|
    [ 200, { 'Content-Type' => 'text/html', 'Cache-Control' => 'public, max-age=86400' }, [File.read('index.html')] ]
  }
end

map '/material' do
  run Proc.new { |env|
    [ 200, { 'Content-Type' => 'text/html', 'Cache-Control' => 'public, max-age=86400' }, [File.read('material.html')] ]
  }
end
