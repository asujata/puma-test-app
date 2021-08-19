require 'sinatra'

get '/' do
  require 'socket'
  hostname = Socket.gethostname
  response = ""
  request.env.each do |k, v|
    response << "#{k}: #{v}<br/>"
  end
  response
end
