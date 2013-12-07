class SolutionsController < ApplicationController
  def index
  	 @problem = Problem.find(params[:problem_id])
  	 @solutions = @problem.solutions.all
  end

  def new
  	@problem = Problem.find(params[:problem_id])
  	@solution = @problem.solutions.new
  end

  def create
  	@problem = Problem.find(params[:problem_id]) #find a way to avoid querying database here?
  	@solution = Solution.new(solution_params)
  	@solution.problem_id = params[:problem_id]
  	@solution.save
  	redirect_to problem_solutions_path(@problem)
  end

   private
   def solution_params
     params.require(:solution).permit(:username, :answer, :picture, :problem_id)
   end

end
