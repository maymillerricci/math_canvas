class ProblemsController < ApplicationController

  def index
  	@problems = Problem.all
  end

  def new
  	@problem = Problem.new
  end

  def create
  	@problem = Problem.new(problem_params)
  	@problem.save
  	redirect_to problems_path
  end

  private
   def problem_params
     params.require(:problem).permit(:question, :answer)
   end


end
