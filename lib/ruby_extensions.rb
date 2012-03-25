$:.unshift(File.dirname(__FILE__) + '/../lib/')

require 'digest/sha1'

require 'ruby_extensions/version'
require 'ruby_extensions/string'

include RubyExtensions::String