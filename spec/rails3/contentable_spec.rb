require File.dirname(__FILE__) + "/spec_helper"

describe "acts_as_contentable" do
	it "should be a well defined method on clases that inherit from ActiveRecord" do
		class A < ActiveRecord::Base
		end
		A.should respond_to :acts_as_contentable
		lambda {A.acts_as_contentable}.should_not raise_error
	end
end

describe ActionView::Base.new do
	describe "display_textile method" do
		before :all do 
			@textile_text = <<-TEXTILE
h1. The header

A paragraph
			TEXTILE
		end
		
		it "should be defined" do
			should respond_to :display_textile
		end
		it "should render html appropriately" do
			result = ActionView::Base.new.display_textile(@textile_text)
			result.should include "<h1>"
			result.should include "<p>"
		end
	end
end

describe ContentItemsController do
	before :all do
		@content = Factory :content_item, :name => "some_content"
	end
	
	describe "find_content_item method" do
		it "should assign a content item to @content_item implicitly" do
			get "content/some_content"
			assigns[:content_item].should.be_a_kind_of ContentItem
		end
		it "should assign the correct content item to @content_item" do
			get "content/some_content"
			assigns[:content_item].should == @content
		end
		it "should assign a content item to @content_item explicitly" do
			
		end
	end
end


# Things to spec:
# 
# Make sure that the find_content_item method doesn't return a string
# This is sure to be confusing to people
#
# Spec out the way it is written to respond here though (that is, by
# assigning directly to the attribute within the method)
#
# Make sure that the find_by .. methods are working properly
