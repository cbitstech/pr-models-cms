class Tree < ActiveRecord::Base

	has_attached_file :file

	validates_attachment :file,
  :content_type => { :content_type => "text/plain" },
  :size => { :in => 0..10.megabytes }

	validates :accuracy, numericality: true #requires number input, converts to float
	validates :pr_id, :presence => true

end
