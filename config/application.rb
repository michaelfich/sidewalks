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
      body = '<h1>Welcome to Ruby on Sidewalks</h1>' \
             '<p>A rack demo at Ruby Lightning Talks TO - June 2016</p>'

      [ status, headers, [body] ]
    end
  end
end
