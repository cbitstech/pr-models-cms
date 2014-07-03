class TreesController < ApplicationController

	def new
	end

	def create
		@tree = Tree.new(tree_params)

		respond_to do |format|
				  if @tree.save
				    format.html { redirect_to @tree, notice: 'Your metadata was saved.' }
				    format.json { render action: 'show', status: :created, location: @tree }
				  else
				    format.html { render action: 'new' }
				    format.json { render json: @treer.errors, status: :unprocessable_entity }
			end
	end

	def index
		@trees = Tree.all
	end

	def edit
		@tree = Tree.find(params[:id])
	end

	def show
		@tree = Tree.find(params[:id])
	end

	def update
    respond_to do |format|
      if @tree.update(tree_params)
        format.html { redirect_to @tree, notice: 'Tree metadata successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tree.errors, status: :unprocessable_entity }
      end
    end
  end

private
	def tree_params
  	params.require(:tree).permit(:author, :accuracy)
	end

end
