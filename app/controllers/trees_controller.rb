class TreesController < ApplicationController

	def new
  	@tree = Tree.new
	end

	def create
		@tree = Tree.new(tree_params)
	
		respond_to do |format|
			if @tree.save
				format.html{redirect_to @tree}
		  	format.json{render :json => @tree, :status => :created, :location => @tree }
			else
				format.html { render 'new' }
				format.json { render json: @tree.errors, status: :unprocessable_entity }
			end
		end
	end

	def index
		@trees = Tree.all
	end

	def edit
		@tree = Tree.find(params[:id])
	end

	def update
    respond_to do |format|
      if @tree.update
        format.html { redirect_to @tree}
        format.json { head :no_content }
      else
        format.html { render 'edit' }
        format.json { render json: @tree.errors, status: :unprocessable_entity }
      end
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

