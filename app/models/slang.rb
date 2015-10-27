class Slang < ActiveRecord::Base
   validates :word, presence: true, length: { minimum: 5 }
   validates :definition, presence: true, length: { minimum: 5 }
                    
end
