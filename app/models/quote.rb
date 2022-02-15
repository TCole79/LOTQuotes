class Quote < ApplicationRecord


  validates :quote_content, presence: true
  validates :quote_author, presence: true
  

end
