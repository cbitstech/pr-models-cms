class Tree < ActiveRecord::Base
	has_attached_file :model, :default_url => "none.txt"

	validates_attachment :model, :presence => true,
  :content_type => { :content_type => "text/plain" },
  :size => { :in => 0..10.megabytes }

	attr_accessor :model_content_type
	attr_accessor :model_file_name
	attr_accessor :model_file_size
end
