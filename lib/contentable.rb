
module Contentable
	
	# Loads our code functionality into rails
	class Railtie < Rails::Railtie
		config.to_prepare do
			ActiveRecord::Base.send :extend, Contentable::Hook
		end
		initializer "contentable.initialize" do |app|
		end
	end
	
	# Extends ActiveRecord::Base in order to grant it's decendents
	# the acts_as_ hook
	module Hook
		def acts_as_contentable
			self.send :include, Model
			ActiveRecord::Migration.extend MigrationHelper
		end
	end
	
	# Gets auto included in your ApplicationHelper when you include the
	# Model module in the model class
	module Helpers
		def display_textile(text)
			RedCloth.new(text).to_html.html_safe
		end
		def display_content(content_item, edit = false)
			html = display_textile(content_item.text)
			if edit
				edit_path = content_item.missing ? new_content_item_path(:title => content_item.missing) : edit_content_item_path(content_item)
				html += "<p>#{link_to("Edit Content", edit_path)}</p> " 
			end
			return html
		end
		# Musts inserts edit_missing_content_link method
	end
	
	# Once included in your model (which at least as of now should be named
	# ContentItem) you get class method safe_find_by_title which lets you
	# search for a ContentItem using a specific title and if it can't find
	# it it presents a default content content_item.
	module Model
		def self.included(model)
			model.extend ClassMethods
			# Should we change missing to missing_name? seems like that makes sense
			model.send :attr_accessor, :missing
			model.validates_uniqueness_of :name
			ActionView::Base.send :include, Helpers
		end
		module ClassMethods
			def safe_find_by_name(name)
				found_by_name = find_by_name(name)
				if found_by_name
					return found_by_name
				else
					content_missing = find_or_create_by_name(:name => "content_missing", :title => "Content Missing", :description => "This is the display page returned when there is no content found that matches a particular name.", :text => "This content has yet to be created.")
					# This lets the content_missing content item know what 
					# name was requested so that one can ask it for the 
					# name and create a new content item with that name.
					content_missing.missing = name
					return content_missing
				end
			end
		end
	end
	
	# After includng this module in the ContentItem, take the
	# @content_item assignments as these will be set up for you
	# with the before filter. Or, alternatively, make a call to
	# find_content_item yourself.
	module Controller
		# Sets up before filter for us.
		def self.included(controller)
			controller.before_filter :find_content_item
		end
		private
		# This method can be used as a controller helper mehtod to be
		# used in a before filter
		def find_content_item
			if params[:id]
				@content_item = ContentItem.find(params[:id])
			elsif params[:name]
				@content_item = ContentItem.safe_find_by_name(params[:name])
				@missing = @content_item.missing
			else
				@content_item = ContentItem.safe_find_by_name("content_missing")
			end
			return @content_item
		end
	end
	
	# This module gives us some migration helpers that let us easily
	# create the fields necessary for content items. We are switching
	# this so that title can contain title information to show up in
	# the resulting document title, while path is where you go to get
	# there.
	#
	# This doesn't work yet - might want to consider scrapping it for
	# now, but it would be good to have later. When we do that, we should
	# make it model name agnostic...
	module MigrationHelper
		def create_content_items
			create_table :content_items do |t|
				t.string :name
				t.string :title
				t.string :description
				t.text :text
				
				t.timestamps
			end
		end
		
		def drop_content_items
			drop_table :content_items
		end
	end
	
end
