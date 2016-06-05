require_relative 'config/application'

use Rack::Reloader, 0
use Rack::Static, urls: ['/css', '/images'], root: 'public'

run ::Sidewalks::Application.new
