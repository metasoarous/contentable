class CreateContentItems < ActiveRecord::Migration
	def self.up
		create_content_items
	end

	def self.down
		drop_content_items
	end
end
