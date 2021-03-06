class Comment < ActiveRecord::Base
  belongs_to :slang
   validates :commenter, presence: true, length: { minimum: 1 }
   validates :body, presence: true, length: { minimum: 2 }
end
