class HomeController < ApplicationController
  def index
    @important_dates = ImportantDate.all

    render :json => @important_dates, :callback => params[:callback]
  end
end
