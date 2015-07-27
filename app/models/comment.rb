class Comment < ActiveRecord::Base
  belongs_to :article
    validates :commenter, presence: true
	belongs_to :user
end
