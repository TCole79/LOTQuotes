class QuotesListController< ApplicationController
  def index
    @quotes = Quote.all
  end
end