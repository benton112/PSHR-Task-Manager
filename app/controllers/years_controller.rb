class YearsController < ApplicationController
  def index
  	@timeStart = Task.minimum('begin')#.change(month: 1, day: 1) 
    @timeEnd = Task.maximum('end')#.change(month: 12, day: 31) 
    @timeDay = (@timeEnd - @timeStart ) / 1420

    @years = ((@timeEnd - @timeStart) / 365.days).ceil

    @tasks = current_user.tasks
  end

  def show
  	yearBegin=Date.new(params[:id].to_i+1, 1, 1)
    @yearEnd=Date.new(params[:id].to_i, 1, 1)
  	@tasks = Task.where(["begin < ? and end > ? and user_id=?", yearBegin,@yearEnd,current_user.id])
  end
end
