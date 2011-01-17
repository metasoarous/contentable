require 'rubygems'
require 'rake'

begin
	require 'jeweler'
	Jeweler::Tasks.new do |gem|
		gem.name = "contentable"
		gem.summary = %Q{Rails 3 gem for streamlining the management of chunks of html (textile) content within an application}
		gem.description = %Q{Contentable allows rails developers to place chunks of content in "content_items" whcih store content text, titles and descriptions in order to make content more easily updateable manageable.}
		gem.email = "metasoarous@gmail.com"
		gem.homepage = "http://github.com/metasoarous/contentable"
		gem.authors = ["metasoarous"]
		gem.add_dependency "RedCloth"
		gem.add_development_dependency "rspec", ">= 1.2.9"
		# gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
	end
	Jeweler::GemcutterTasks.new
rescue LoadError
	puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

# Complaining about not being able to find Spec
# 
# Spec::Rake::SpecTask.new(:rcov) do |spec|
#		spec.libs << 'lib' << 'spec'
#		spec.pattern = 'spec/**/*_spec.rb'
#		spec.rcov = true
# end

task :spec => :check_dependencies

# task :default => :spec
desc 'Default: Run all specs.'
task :default => :all_specs

desc "Run all specs"
task :all_specs do
	Dir['spec/**/Rakefile'].each do |rakefile|
		directory_name = File.dirname(rakefile)
		sh <<-CMD
			cd #{directory_name} 
			bundle exec rake
		CMD
	end
end



require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
	version = File.exist?('VERSION') ? File.read('VERSION') : ""

	rdoc.rdoc_dir = 'rdoc'
	rdoc.title = "contentable #{version}"
	rdoc.rdoc_files.include('README*')
	rdoc.rdoc_files.include('lib/**/*.rb')
end
