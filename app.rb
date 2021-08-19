require 'sinatra'

get '/' do
  require 'socket'
  hostname = Socket.gethostname
  "hostname: #{hostname}"
end
