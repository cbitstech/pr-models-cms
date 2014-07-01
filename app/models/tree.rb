class Tree < ActiveRecord::Base
 validates :author, presence: true,
                    length: { minimum: 3 }

	validates :accuracy, presence: true,
		                length: { minimum: 1 }
end
