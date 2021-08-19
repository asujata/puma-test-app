require 'sinatra'

get '/' do
  require 'socket'
  hostname = Socket.gethostname
  response = "================ REQUEST ENV ================<br/>"
  request.env.each do |k, v|
    response << "#{k}: #{v}<br/>"
  end
  response << "<br/>================ HOST ENV ================<br/>"
  ENV.each do |k, v|
    response << "#{k}: #{v}<br/>"
  end
  response
end
