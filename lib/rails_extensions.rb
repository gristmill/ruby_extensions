$:.unshift(File.dirname(__FILE__) + '/../lib/')

require 'digest/sha1'

require 'rails_extensions/version'
require 'rails_extensions/string'

include RailsExtensions::String