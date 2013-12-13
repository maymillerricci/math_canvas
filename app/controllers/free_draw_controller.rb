class FreeDrawController < ApplicationController
  def index
    @problem = Problem.find(12)
    @solutions = @problem.solutions.order("likes DESC")
    @active_page = "Free_Draw"
  end

  def new
  	@problem = Problem.find(12)
  	@solution = @problem.solutions.new
    @active_page = "Free_Draw"
  end

end
