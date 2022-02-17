class Quote < ApplicationRecord
  def self.random
    Quote.limit(1).order("RANDOM()").first
  end

  validates :quote_content, presence: true
  validates :quote_author, presence: true
  

  acts_as_favoritable
  
end
