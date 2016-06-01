require 'rubygems'
require 'bundler/setup'
require 'erb'

Bundler.require(:default)

module Sidewalks
  class Application
    attr_accessor :app

    def initialize(app = {})
      @app = app
    end

    def call(env)
      request = Rack::Request.new(env)

      case request.path.downcase
      when '/'
        [ 200, { 'Content-Type' => 'text/html' }, [ render('index.html.erb') ] ]
      else
        [ 404, { 'Content-Type' => 'text/html' }, [ render('404.html.erb') ] ]
      end
    end

    def render(filename)
      file_path = File.expand_path("./app/views/#{filename}")
      file_content = File.read(file_path)
      ERB.new(file_content).result(binding)
    end
  end
end
