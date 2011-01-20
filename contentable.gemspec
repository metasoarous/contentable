# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{contentable}
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["metasoarous"]
  s.date = %q{2011-01-20}
  s.description = %q{Contentable allows rails developers to place chunks of content in "content_items" whcih store content text, titles and descriptions in order to make content more easily updateable manageable.}
  s.email = %q{metasoarous@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.textile"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.textile",
     "Rakefile",
     "VERSION",
     "contentable.gemspec",
     "lib/contentable.rb",
     "lib/version.rb",
     "spec/rails3/Gemfile",
     "spec/rails3/Gemfile.lock",
     "spec/rails3/Rakefile",
     "spec/rails3/app_root/.gitignore",
     "spec/rails3/app_root/README",
     "spec/rails3/app_root/app/controllers/application_controller.rb",
     "spec/rails3/app_root/app/controllers/content_items_controller.rb",
     "spec/rails3/app_root/app/helpers/application_helper.rb",
     "spec/rails3/app_root/app/helpers/content_items_helper.rb",
     "spec/rails3/app_root/app/models/content_item.rb",
     "spec/rails3/app_root/app/views/content_items/_form.html.erb",
     "spec/rails3/app_root/app/views/content_items/edit.html.erb",
     "spec/rails3/app_root/app/views/content_items/index.html.erb",
     "spec/rails3/app_root/app/views/content_items/new.html.erb",
     "spec/rails3/app_root/app/views/content_items/show.html.erb",
     "spec/rails3/app_root/app/views/layouts/application.html.erb",
     "spec/rails3/app_root/config.ru",
     "spec/rails3/app_root/config/application.rb",
     "spec/rails3/app_root/config/boot.rb",
     "spec/rails3/app_root/config/database.yml",
     "spec/rails3/app_root/config/environment.rb",
     "spec/rails3/app_root/config/environments/development.rb",
     "spec/rails3/app_root/config/environments/in_memory.rb",
     "spec/rails3/app_root/config/environments/production.rb",
     "spec/rails3/app_root/config/environments/test.rb",
     "spec/rails3/app_root/config/initializers/backtrace_silencers.rb",
     "spec/rails3/app_root/config/initializers/inflections.rb",
     "spec/rails3/app_root/config/initializers/mime_types.rb",
     "spec/rails3/app_root/config/initializers/secret_token.rb",
     "spec/rails3/app_root/config/initializers/session_store.rb",
     "spec/rails3/app_root/config/locales/en.yml",
     "spec/rails3/app_root/config/routes.rb",
     "spec/rails3/app_root/db/migrate/20110102070953_create_content_items.rb",
     "spec/rails3/app_root/db/schema.rb",
     "spec/rails3/app_root/db/seeds.rb",
     "spec/rails3/app_root/doc/README_FOR_APP",
     "spec/rails3/app_root/lib/tasks/.gitkeep",
     "spec/rails3/app_root/public/404.html",
     "spec/rails3/app_root/public/422.html",
     "spec/rails3/app_root/public/500.html",
     "spec/rails3/app_root/public/favicon.ico",
     "spec/rails3/app_root/public/images/rails.png",
     "spec/rails3/app_root/public/index.html",
     "spec/rails3/app_root/public/javascripts/application.js",
     "spec/rails3/app_root/public/javascripts/controls.js",
     "spec/rails3/app_root/public/javascripts/dragdrop.js",
     "spec/rails3/app_root/public/javascripts/effects.js",
     "spec/rails3/app_root/public/javascripts/prototype.js",
     "spec/rails3/app_root/public/javascripts/rails.js",
     "spec/rails3/app_root/public/robots.txt",
     "spec/rails3/app_root/public/stylesheets/.gitkeep",
     "spec/rails3/app_root/public/stylesheets/scaffold.css",
     "spec/rails3/app_root/script/rails",
     "spec/rails3/contentable_spec.rb",
     "spec/rails3/spec.opts",
     "spec/rails3/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/metasoarous/contentable}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Rails 3 gem for streamlining the management of chunks of html (textile) content within an application}
  s.test_files = [
    "spec/rails3/app_root/app/controllers/application_controller.rb",
     "spec/rails3/app_root/app/controllers/content_items_controller.rb",
     "spec/rails3/app_root/app/helpers/application_helper.rb",
     "spec/rails3/app_root/app/helpers/content_items_helper.rb",
     "spec/rails3/app_root/app/models/content_item.rb",
     "spec/rails3/app_root/config/application.rb",
     "spec/rails3/app_root/config/boot.rb",
     "spec/rails3/app_root/config/environment.rb",
     "spec/rails3/app_root/config/environments/development.rb",
     "spec/rails3/app_root/config/environments/in_memory.rb",
     "spec/rails3/app_root/config/environments/production.rb",
     "spec/rails3/app_root/config/environments/test.rb",
     "spec/rails3/app_root/config/initializers/backtrace_silencers.rb",
     "spec/rails3/app_root/config/initializers/inflections.rb",
     "spec/rails3/app_root/config/initializers/mime_types.rb",
     "spec/rails3/app_root/config/initializers/secret_token.rb",
     "spec/rails3/app_root/config/initializers/session_store.rb",
     "spec/rails3/app_root/config/routes.rb",
     "spec/rails3/app_root/db/migrate/20110102070953_create_content_items.rb",
     "spec/rails3/app_root/db/schema.rb",
     "spec/rails3/app_root/db/seeds.rb",
     "spec/rails3/contentable_spec.rb",
     "spec/rails3/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<RedCloth>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<RedCloth>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<RedCloth>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end

