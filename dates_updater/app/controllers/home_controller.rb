class HomeController < ApplicationController
  def index
    @important_dates = ImportantDate.order("start_date")

    render :json => @important_dates, :callback => params[:callback]
  end
end
