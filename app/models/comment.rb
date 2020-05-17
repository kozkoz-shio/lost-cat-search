class Comment < ApplicationRecord
  belongs_to :maigo  
  belongs_to :user 
end
