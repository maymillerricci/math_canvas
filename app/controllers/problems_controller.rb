class ProblemsController < ApplicationController

  def solve
    # @problems = Problem.all
    @problems = Problem.where.not(id: 12)
    @active_page = "Problems"
  end 

  def gallery
    # @problems = Problem.all
  	@problems = Problem.where.not(id: 12)
    @active_page = "Solutions"
  end

  def new
  	@problem = Problem.new
    @active_page = "Problems"
  end

  def create
  	@problem = Problem.new(problem_params)
  	@problem.save
  	redirect_to problems_solve_path
  end

  private
   def problem_params
     params.require(:problem).permit(:question, :answer)
   end


end
