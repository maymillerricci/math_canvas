class SolutionsController < ApplicationController
  def index
  	 @problem = Problem.find(params[:problem_id])
     @solutions = @problem.solutions.order("correct ASC, likes DESC")
     @active_page = "Solutions"
  end

  def new
    @problem = Problem.find(params[:problem_id])
    @solution = @problem.solutions.new
    @active_page = "Solutions"
  end

  def create
  	@problem = Problem.find(params[:problem_id]) #find a way to avoid querying database here?
    @solution = Solution.new(solution_params)
  	@solution.problem_id = params[:problem_id]
    if @solution.answer == @problem.answer
      @solution.correct = "correct"
      @solution.likes += 1
    else
      @solution.correct = "incorrect"
    end
  	@solution.save
  	redirect_to problem_solutions_path(@problem)
  end

   private
   def solution_params
     params.require(:solution).permit(:username, :answer, :picture, :problem_id)
   end

end
