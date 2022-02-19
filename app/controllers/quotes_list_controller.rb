class QuotesListController< ApplicationController
  def index
    @quotes = Quote.all
    @sauronQuotes = Quote.where(quote_author: "Sauron")
    @bilboQuotes = Quote.where(quote_author: "Bilbo Baggins")
    @aragornQuotes = Quote.where(quote_author: "Aragorn")
    @gandalfQuotes = Quote.where(quote_author: "Gandalf")
    @gimliQuotes = Quote.where(quote_author: "Gimli")
    @legolasQuotes = Quote.where(quote_author: "Legolas")
    @gollumQuotes = Quote.where(quote_author: "Gollum")

  end


def bilbo
  @bilboQuotes = Quote.where(quote_author: "Bilbo Baggins")
end

def sauron 
  @sauronQuotes = Quote.where(quote_author: "Sauron")
end

def gimli 
  @gimliQuotes = Quote.where(quote_author: "Gimli")
end

def gandalf 
  @gandalfQuotes = Quote.where(quote_author: "Gandalf")
end

def aragorn 
  @aragornQuotes = Quote.where(quote_author: "Aragorn")
end

def legolas
  @legolasQuotes = Quote.where(quote_author: "Legolas")
end

def gollum 
  @gollumQuotes = Quote.where(quote_author: "Gollum")
end
end