class LikesController < ApplicationController
	def create
    	@solution = Solution.find(params[:solution_id])
    	@solution.likes += 1
    	@solution.save
    	redirect_to :back
    end
end
