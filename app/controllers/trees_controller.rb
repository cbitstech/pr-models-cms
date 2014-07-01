class TreesController < ApplicationController

	def new
	end

	def create
		@tree = Tree.new(tree_params)
 
		@tree.save
  	redirect_to @tree
	end

	def show
		@tree = Tree.find(params[:id])
	end

private
	def tree_params
  	params.require(:tree).permit(:author, :accuracy)
	end

end
