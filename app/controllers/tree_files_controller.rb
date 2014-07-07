class TreeFilesController < ApplicationController

 def create
		@tree = Tree.find(params[:tree_id])
    @tree_file = @tree.tree_files.create(tree_file_params)
    redirect_to tree_path(@tree)
  end
 
  private
    def tree_file_params
      params.require(:tree_file).permit(:model)
    end
end
