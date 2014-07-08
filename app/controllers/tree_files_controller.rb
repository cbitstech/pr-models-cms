class TreeFilesController < ApplicationController

	def new
  	@tree_file = TreeFile.new
	end

 def create
		@tree = Tree.find(params[:tree])
    @tree_file = @tree.tree_files.create(params[:model])
    redirect_to tree_path(@tree)
	end

	def create
		@user = User.create( user_params )
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
      params.require(:tree).permit(:model, :tree_id)
    end

end
