class TreeFilesController < ApplicationController

	def new
  	@tree_file = TreeFile.new
	end

 def create
		@tree = Tree.find(params[:tree_id])
    @tree_file = @tree.tree_files.new(params[:model])
    redirect_to tree_path(@tree)
  end

	def edit
		@tree = TreeFile.find(params[:id])
	end
 
	def show
		@tree_file = TreeFile.find(params[:id])
	end

	def index
		@tree_files = TreeFile.all
	end

  private
    def tree_file_params
      params.require(:tree_file).permit(:model, :tree_id)
    end
end
