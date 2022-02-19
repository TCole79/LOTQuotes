class QuotesListController< ApplicationController
  def index
    @quotes = Quote.all
    @sauronQuotes = Quote.where(quote_author: "Sauron")
    @bilboQuotes = Quote.where(quote_author: "Bilbo Bagen")
    @gimiliQuotes = Quote.where(quote_author: "Bilbo Bagen")
    @aragornQuotes = Quote.where(quote_author: "Aragorn")
    @gandalfQuotes = Quote.where(quote_author: "Gandalf")

  end


def bilbo
  @bilboQuotes = Quote.where(quote_author: "Bilbo Bagen")
end

def sauron 
  @sauronQuotes = Quote.where(quote_author: "Sauron")
end

def gimili 
  @gimiliQuotes = Quote.where(quote_author: "Gimili")
end

def gimili 
  @gandalfQuotes = Quote.where(quote_author: "Gandalf")
end

def gimili 
  @aragornQuotes = Quote.where(quote_author: "Aragorn")
end
end