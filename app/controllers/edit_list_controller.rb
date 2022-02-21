class EditListController < ApplicationController
  def editlist  
    @quotes = Quote.all
  end
end


