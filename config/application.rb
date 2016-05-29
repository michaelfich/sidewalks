require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

module Sidewalks
  class Application
    def initialize(app = {})
      @app = app
    end

    def call(env)
      status = 200
      headers = { 'Content-Type' => 'text/html' }
      body = 'Welcome to Ruby on Sidewalks'

      [ status, headers, [body] ]
    end
  end
end
