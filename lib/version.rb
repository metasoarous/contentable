module Contentable
	version_filename = File.join(File.dirname(__FILE__), "/../VERSION" )
	VERSION =  File.read(version_filename)
end