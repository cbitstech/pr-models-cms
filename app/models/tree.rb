class Tree < ActiveRecord::Base
	has_attached_file :model, :default_url => "/models/none.txt"
  validates_attachment_content_type :model, :content_type => /\Atxt\/.*\Z/
end
