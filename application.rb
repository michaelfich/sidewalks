require 'rack'

module Sidewalks
  class Application
    def call(env)
      status = 200
      headers = { 'Content-Type' => 'text/html' }
      body = 'Welcome to Ruby on Sidewalks'

      [ status, headers, [body] ]
    end
  end
end

Rack::Handler::WEBrick.run ::Sidewalks::Application.new
