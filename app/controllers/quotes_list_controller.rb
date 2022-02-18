class QuotesListController< ApplicationController
  def index
    @quotes = Quote.all
    @sauronQuotes = Quote.where(quote_author: "Sauron")
    @bilboQuotes = Quote.where(quote_author: "Bilbo Bagen")
  end
end