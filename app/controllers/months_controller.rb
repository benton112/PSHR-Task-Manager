class MonthsController < ApplicationController
  def index
  end

  def show
  	@dateBegin=Date.new(params[:year_id].to_i,params[:id].to_i , 1)-1.month
    @date=Date.new(params[:year_id].to_i,params[:id].to_i , 1)
    @dateEnd=(Date.new(params[:year_id].to_i,params[:id].to_i , 1)+1.month).end_of_month


  	@tasks = Task.where(["begin < ? and end > ?and user_id=?", @dateEnd, @dateBegin,current_user.id])

  end

end
