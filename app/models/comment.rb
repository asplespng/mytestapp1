class Comment < ActiveRecord::Base
  belongs_to :article
  validates :body, :commenter, presence: true
end