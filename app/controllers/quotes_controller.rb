class QuotesController < ApplicationController
  def index
    @quote = Quote.order("RANDOM()").first
  end

  def create
    @quote=Quote.create(saying: quote_params[:saying],author: quote_params[:author])
    puts quote_params[:saying]
    if @quote.invalid?
      flash[:error] = '<strong>Could not save. </strong> The data entered is invalid.'
    end
    redirect_to root_path
  end

  def about 
  end

  private

  def quote_params
    params.require(:quote).permit(:saying,:author)
  end

end
