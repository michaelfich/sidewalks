require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

require_relative 'config/application'

run ::Sidewalks::Application.new
