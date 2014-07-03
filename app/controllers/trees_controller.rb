class TreesController < ApplicationController

	def new
  	@tree = Tree.new
	end

	def create
		@tree = Tree.new(tree_params)

		if @tree.save
		  redirect_to @tree
		else
		  render 'new'
		end
	end

	def index
		@trees = Tree.all
	end

	def edit
		@tree = Tree.find(params[:id])
	end

	def update
  	@tree = Tree.find(params[:id])
 
		if @tree.update(tree_params)
		  redirect_to @tree
		else
		  render 'edit'
		end
	end

	def show
		@tree = Tree.find(params[:id])
	end

	private
	def tree_params
		params.require(:tree).permit(:author, :accuracy)
	end
end

