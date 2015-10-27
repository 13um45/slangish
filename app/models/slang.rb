class Slang < ActiveRecord::Base
  has_many :comments, dependent: :destroy
   validates :word, presence: true, length: { minimum: 2 }
   validates :definition, presence: true, length: { minimum: 2 }
                    
end
