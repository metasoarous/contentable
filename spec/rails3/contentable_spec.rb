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